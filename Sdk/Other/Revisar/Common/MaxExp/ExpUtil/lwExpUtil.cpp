//
#include "lwExpUtil.h"

LW_BEGIN

#define CALL_JACK_MSGBOX() MessageBox(NULL, "call jack", "error", MB_OK)

lwExpCoordTypeEnum g_coord_type = LW_COORD_TYPE_MINDPOWER;

void lwSetCoordType(lwExpCoordTypeEnum type)
{
    g_coord_type = type;
}

struct lwIndexFloat
{
    DWORD id;
    float data;
};

void FormM16(Matrix3 &matrix, float *curM)
{
   Point3 r0;

   r0 = matrix.GetRow(0);
   curM[0] = r0.x; curM[1] = r0.y; curM[2] = r0.z; curM[3] = 0.0f;

   r0 = matrix.GetRow(1);
   curM[4] = r0.x; curM[5] = r0.y; curM[6] = r0.z; curM[7] = 0.0f;

   r0 = matrix.GetRow(2);
   curM[8] = r0.x; curM[9] = r0.y; curM[10] = r0.z; curM[11] = 0.0f;

   r0 = matrix.GetRow(3);
   curM[12] = r0.x; curM[13] = r0.y; curM[14] = r0.z; curM[15] = 1.0f;
}

void lwConvertBox3(lwBox* out_box, const Box3* in_box)
{
    Point3 c = in_box->Center();
    Point3 r = in_box->Width();

    out_box->c.x = c.x;
    out_box->c.y = c.y;
    out_box->c.z = c.z;

    out_box->r.x = r.x / 2;
    out_box->r.y = r.y / 2;
    out_box->r.z = r.z / 2;

    float t;

    if(g_coord_type & LW_COORD_TYPE_LEFTHAND)
    {
        t = out_box->c.y;
        out_box->c.y = out_box->c.z;
        out_box->c.z = t;

        t = out_box->r.y;
        out_box->r.y = out_box->r.z;
        out_box->r.z = t;
    }

    if(g_coord_type & LW_COORD_TYPE_MINDPOWER)
    {
        t = out_box->c.y;
        out_box->c.y = - out_box->c.z;
        out_box->c.z = t;

        t = out_box->r.y;
        out_box->r.y = - out_box->r.z;
        out_box->r.z = t;
    }

}

// ========================================
// begin
const char* __mask_str[] =
{
    "obj_",
    "bb_",
    "bs_",
    "hm_",
    "hb_",
    "dummy_",
    "bone_",
    "Bip",
    "Bone",
    "node_",
    "helper_"
};

const size_t __mask_len[] =
{
    4,
    3,
    3,
    3,
    3,
    6,
    5,
    3,
    4,
    5,
    7
};
// end

// obj_ID, ID: 00-99
DWORD lwGetMaskIDWithName(DWORD type, const char* name)
{
    DWORD id = LW_INVALID_INDEX;

    if(_tcsncmp(name, __mask_str[type], __mask_len[type]))
        goto __ret;

    id = atoi(&name[__mask_len[type]]);

__ret:
    return id;
}

LW_RESULT lwGetMaskNameWithName(char* mask_name, const char* name)
{
    const char* c;
    
    LW_RESULT ret = LW_RET_FAILED;

    mask_name[0] = '\0';

    // locate _id
    if((c = _tcschr(name, '_')) == NULL)
        goto __ret;

    // locate _name
    if((c = _tcschr(c+1, '_')) == NULL)
        goto __ret;

    if((c[1] >= 'a' && c[1] <= 'z') || (c[1] >= 'A' && c[1] <= 'Z'))
    {
        
        for(c += 1; *c != '_' && *c != '\0'; c++)
        {
            *(mask_name++) = *c;
        }
        *mask_name = '\0';

        //_tcscpy(mask_name, &c[1]);

        ret = LW_RET_OK;
    }

__ret:
    return ret;
}

LW_RESULT lwCheckMaskName(DWORD type, const char* name)
{
    LW_RESULT ret = (_tcsncmp(name, __mask_str[type], __mask_len[type]) == 0) ? LW_RET_OK : LW_RET_FAILED;

    return ret;
}

// token: hm_0_{t}
char* lwLocateMaskNameToken(char token, const char* name)
{
    char* ret = 0;

    char* s = _tcschr(name, '{');
    if(s == NULL)
        goto __ret;

    char* e = _tcschr(s, '}');
    if(e == NULL)
        goto __ret;

    for(; s != e; s++)
    {
        if(*s == token)
        {
            ret = s;
            goto __ret;
        }
    }

__ret:
    return ret;
}
LW_RESULT lwCheckMaskNameToken(char token, const char* name)
{
    return lwLocateMaskNameToken(token, name) ? LW_RET_OK : LW_RET_FAILED;
}

LW_RESULT lwGetMaskNameTokenParamI(int* param, char token, const char* name)
{
    char* t = lwLocateMaskNameToken(token, name);
    if(t == NULL)
        return LW_RET_FAILED;

    *param = atoi(t + 1);

    return LW_RET_OK;
}

void lwGetNodeLocalTM(INode* node, Matrix3* mat_local, TimeValue t)
{
	Matrix3 mat_global, mat_parent;

    if(node->GetParentNode())
    {
        mat_global = node->GetNodeTM(t);
        mat_parent = node->GetParentNode()->GetNodeTM(t);
        *mat_local = mat_global * Inverse(mat_parent);
    }
    else
    {
        *mat_local = node->GetNodeTM(t);
    }
}

LW_RESULT lwGetNodeBoundingBox(lwBox* box, lwMatrix44* mat_local, INode* node)
{
    Object* obj = node->EvalWorldState(0).obj;
    if(obj->CanConvertToType(triObjectClassID) == 0)
        return LW_RET_FAILED;

	TriObject *tri = (TriObject*)obj->ConvertToType(0, triObjectClassID);
    
    Mesh& mesh = tri->GetMesh();
    mesh.buildBoundingBox();

    Box3 b = mesh.getBoundingBox();
    lwConvertBox3(box, &b);

    if(mat_local)
    {
        Matrix3 m3;
        lwGetNodeLocalTM(node, &m3, 0);
        FormM16(m3, (float*)&mat_local->_11);
    }

    if(mat_local)
    {
        if(g_coord_type & LW_COORD_TYPE_LEFTHAND)
        {
            lwMatrix44MetathesisYZ(mat_local, mat_local);
        }

        if(g_coord_type & LW_COORD_TYPE_MINDPOWER)
        {
            lwMatrix44MetathesisMindPower(mat_local, mat_local);
        }
    }

    return LW_RET_OK;
}

LW_RESULT lwExpGeomObjHelperDummy(INode* obj_node, lwHelperInfo* helper_info)
{
    LW_RESULT ret = LW_RET_FAILED;

    int dummy_num = 0;
    int child_num = obj_node->NumberOfChildren();
    INode* child_node;
    Object* child_node_obj;
    const char* child_name;

    for(int i = 0; i < child_num; i++)
    {
        child_node = obj_node->GetChildNode(i);
        child_node_obj = child_node->EvalWorldState(0).obj;
        child_name = child_node->GetName();

        if(child_node->IsHidden())
            continue;
        
        if((child_node_obj->ClassID() == Class_ID(DUMMY_CLASS_ID , 0))
            && LW_SUCCEEDED(lwCheckMaskName(MASK_HELPER_DUMMY, child_name)))
        {
            dummy_num++;
        }
    }

    if(dummy_num == 0)
        goto __ret_ok;

    //
    // begin by lsh 2005-02-04
    // 这里我们定义：如果obj_node有verteices blend（骨骼动画），则dummy
    // 信息将可以包含是否link在骨骼或者骨骼dummy上
    // end
    const int max_bone_num = 256;
    INode* bone_node_seq[max_bone_num];
    int bone_node_num = 0;

    INode* bone_root_node = lwGetNodeBoneRootNode(obj_node);
    if(bone_root_node)
    {
        if(LW_FAILED(lwEnumBoneNode(bone_root_node, bone_node_seq, &bone_node_num, max_bone_num)))
        {
            char err_str[260];
            sprintf(err_str, "%s\nobject dummy error with node:%s", __FUNCTION__, obj_node->GetName());
            MessageBox(0, err_str, "error", 0);
            goto __ret;
        }
    }

    lwHelperDummyInfo* dummy_seq = LW_NEW(lwHelperDummyInfo[dummy_num]);
    lwHelperDummyInfo* di;
    int di_num = 0;

    for(int i = 0; i < child_num; i++)
    {
        child_node = obj_node->GetChildNode(i);
        child_node_obj = child_node->EvalWorldState(0).obj;
        child_name = child_node->GetName();

        if(child_node->IsHidden())
            continue;

        if(!((child_node_obj->ClassID() == Class_ID(DUMMY_CLASS_ID , 0))
            && LW_SUCCEEDED(lwCheckMaskName(MASK_HELPER_DUMMY, child_name))))
        {
            continue;
        }

        di = &dummy_seq[di_num++];

        di->id = lwGetMaskIDWithName(MASK_HELPER_DUMMY, child_name);

        if(bone_node_num > 0)
        {
            // dummy_id_{t[0][1]p[id]}
            int t, p;
            lwGetMaskNameTokenParamI(&t, 't', child_name);
            lwGetMaskNameTokenParamI(&p, 'p', child_name);

            if(t == 1 || t== 2)
            {
                di->parent_type = t;
                di->parent_id = p;
            }
            else
            {
                char err_str[260];
                sprintf(err_str, "invalid object dummy mask name:%s", child_name);
                MessageBox(0, err_str, "error", 0);
            }

            Matrix3 mat3;
            mat3 = child_node->GetNodeTM(0);
            mat3 = child_node->GetObjectTM(0);
            //这里之所以使用global matrix是因为paret node的verteices都乘上了其global matrix
            //parent node的local matrix identity
            FormM16(mat3, (float*)&di->mat);


            // get local mat
            for(int i = 0; i < bone_node_num; i++)
            {
                if(di->parent_type == 2)
                {
                    for(int j = 0; j < bone_node_seq[i]->NumberOfChildren(); j++)
                    {
                        INode* d_node = bone_node_seq[i]->GetChildNode(j);
                        const char* d_node_name = d_node->GetName();

                        if(LW_FAILED(lwCheckMaskName(MASK_HELPER_DUMMY, d_node_name)))
                            continue;

                        DWORD id = lwGetMaskIDWithName(MASK_HELPER_DUMMY, d_node_name);
                        if(id == di->parent_id)
                        {
                            Matrix3 d_mat = d_node->GetObjectTM(0);
                            Matrix3 mat_local = mat3 * Inverse(d_mat);
                            FormM16(mat_local, (float*)&di->mat_local);
                            goto __conv;
                        }
                    }
                }

            }
        }
        else
        {
            di->parent_id = 0;
            di->parent_type = 0;

            Matrix3 mat3;
            lwGetNodeLocalTM(child_node, &mat3, 0);
            FormM16(mat3, (float*)&di->mat);

        }

__conv:
        if(g_coord_type & LW_COORD_TYPE_LEFTHAND)
        {
            lwMatrix44MetathesisYZ(&di->mat, &di->mat);
        }

        if(g_coord_type & LW_COORD_TYPE_MINDPOWER)
        {
            lwMatrix44MetathesisMindPower(&di->mat, &di->mat);
        }

        if(di->parent_type)
        {
            if(g_coord_type & LW_COORD_TYPE_LEFTHAND)
            {
                lwMatrix44MetathesisYZ(&di->mat_local, &di->mat_local);
            }

            if(g_coord_type & LW_COORD_TYPE_MINDPOWER)
            {
                lwMatrix44MetathesisMindPower(&di->mat_local, &di->mat_local);
            }
        }

    }

    helper_info->dummy_seq = dummy_seq;
    helper_info->dummy_num = dummy_num;
    helper_info->type |= HELPER_TYPE_DUMMY;

__ret_ok:
    ret = LW_RET_OK;
__ret:
    return ret;
}

int lwExpDummyObject(lwHelperDummyInfo* obj, INode* node)
{
    // begin by lsh 2005-02-04
    // 这里我们定义：如果node有verteices blend（骨骼动画），则dummy
    // 信息将可以包含是否link在骨骼或者骨骼dummy上
    // end

    obj->id = lwGetMaskIDWithName(MASK_HELPER_DUMMY, node->GetName());

    INode* bone_root_node = lwGetNodeBoneRootNode(node->GetParentNode());
    if(bone_root_node)
    {
        const char* node_name = node->GetName();

        const int max_bone_num = 256;
        INode* bone_node_seq[max_bone_num];
        int bone_node_num = 0;
        if(LW_FAILED(lwEnumBoneNode(bone_root_node, bone_node_seq, &bone_node_num, max_bone_num)))
        {
            char err_str[260];
            sprintf(err_str, "object dummy error with bone node:%s", node_name);
            MessageBox(0, err_str, "error", 0);
            goto __ret;
        }

        // dummy_id_{t[0][1]p[id]}
        int t, p;
        lwGetMaskNameTokenParamI(&t, 't', node_name);
        lwGetMaskNameTokenParamI(&p, 'p', node_name);

        if(t == 1 || t== 2)
        {
            obj->parent_type = t;
            obj->parent_id = p;
        }
        else
        {
            char err_str[260];
            sprintf(err_str, "invalid object dummy name:%s", node_name);
            MessageBox(0, err_str, "error", 0);
        }

        Matrix3 mat3, mat3_parent;

        mat3 = node->GetNodeTM(0);
        mat3 = node->GetObjectTM(0);

        //这里之所以使用global matrix是因为paret node的verteices都乘上了其global matrix
        //parent node的local matrix identity
        FormM16(mat3, (float*)&obj->mat);


        // get local mat
        for(int i = 0; i < bone_node_num; i++)
        {
            if(obj->parent_type == 2)
            {
                for(int j = 0; j < bone_node_seq[i]->NumberOfChildren(); j++)
                {
                    INode* d_node = bone_node_seq[i]->GetChildNode(j);
                    const char* d_node_name = d_node->GetName();

                    if(LW_FAILED(lwCheckMaskName(MASK_HELPER_DUMMY, d_node_name)))
                        continue;

                    DWORD id = lwGetMaskIDWithName(MASK_HELPER_DUMMY, d_node_name);
                    if(id == obj->parent_id)
                    {
                        Matrix3 d_mat = d_node->GetObjectTM(0);
                        Matrix3 mat_local = mat3 * Inverse(d_mat);
                        FormM16(mat_local, (float*)&obj->mat_local);
                        goto __conv;
                    }
                }
            }
        }

    }
    else
    {
        obj->parent_id = 0;
        obj->parent_type = 0;

        Matrix3 mat3, mat3_parent;

        lwGetNodeLocalTM(node, &mat3, 0);
        //mat3 = Inverse(mat3);
        FormM16(mat3, (float*)&obj->mat);

    }

__conv:
    if(g_coord_type & LW_COORD_TYPE_LEFTHAND)
    {
        lwMatrix44MetathesisYZ(&obj->mat, &obj->mat);
    }

    if(g_coord_type & LW_COORD_TYPE_MINDPOWER)
    {
        lwMatrix44MetathesisMindPower(&obj->mat, &obj->mat);
    }

    if(obj->parent_type)
    {
        if(g_coord_type & LW_COORD_TYPE_LEFTHAND)
        {
            lwMatrix44MetathesisYZ(&obj->mat_local, &obj->mat_local);
        }

        if(g_coord_type & LW_COORD_TYPE_MINDPOWER)
        {
            lwMatrix44MetathesisMindPower(&obj->mat_local, &obj->mat_local);
        }
    }

__ret:
    return 1;

}

LW_RESULT lwExpDefaultBoundingObject(lwBoundingBoxInfo* bb_info, lwBoundingSphereInfo* bs_info, INode* node)
{
    LW_RESULT ret = LW_RET_FAILED;

    Box3 b;
    lwBox box;
    lwMatrix44 mat;

    Object* obj = node->EvalWorldState(0).obj;
    if(obj->CanConvertToType(triObjectClassID) == 0)
        goto __ret;

	TriObject *tri = (TriObject*)obj->ConvertToType(0, triObjectClassID);
	if(tri == NULL)
        goto __ret;	//return if not a triObject
    
    Mesh& mesh = tri->GetMesh();
    mesh.buildBoundingBox();

    b = mesh.getBoundingBox();
    lwConvertBox3(&box, &b);

    lwMatrix44Identity(&mat);

    if(g_coord_type & LW_COORD_TYPE_LEFTHAND)
    {
        lwMatrix44MetathesisYZ(&mat, &mat);                
    }

    if(g_coord_type & LW_COORD_TYPE_MINDPOWER)
    {
        lwMatrix44MetathesisMindPower(&mat, &mat);
    }

    if(bb_info)
    {
        bb_info->id = 0;
        bb_info->box = box;
        bb_info->mat = mat;
    }

    if(bs_info)
    {
        bs_info->id = 0;
        bs_info->sphere.c = lwVector3(0.0f, 0.0f, 0.0f);
        bs_info->sphere.r = (float)sqrtf(box.r.x * box.r.x + box.r.y * box.r.y + box.r.z * box.r.z);
        bs_info->mat = mat;
    }

    ret = LW_RET_OK;
__ret:
    return ret;
}

int lwExpBoundingBox(lwBoundingBoxInfo* info, INode* node)
{
    Object* obj = node->EvalWorldState(0).obj;
    if(obj->CanConvertToType(triObjectClassID) == 0)
        return 0;

	TriObject *tri = (TriObject*)obj->ConvertToType(0, triObjectClassID);
	if(tri == NULL)
        return 0;	//return if not a triObject
    
    Mesh& mesh = tri->GetMesh();
    mesh.buildBoundingBox();

    Box3 b = mesh.getBoundingBox();
    lwConvertBox3(&info->box, &b);

    Matrix3 m3;
    lwGetNodeLocalTM(node, &m3, 0);

    info->id = lwGetMaskIDWithName(MASK_BOUNDING_BOX, node->GetName());

    lwMatrix44* mat_box = &info->mat;
    FormM16(m3, (float*)&mat_box->_11);

    //lwMatrix44 m4;
    //FormM16(m3, (float*)&m4._11);
    //lwVec3Mat44Mul(&box->p, &m4);
    
    if(g_coord_type & LW_COORD_TYPE_LEFTHAND)
    {
        lwMatrix44MetathesisYZ(mat_box, mat_box);                
    }

    if(g_coord_type & LW_COORD_TYPE_MINDPOWER)
    {
        lwMatrix44MetathesisMindPower(mat_box, mat_box);
    }

    return 1;
}


int lwExpBoundingSphere(lwBoundingSphereInfo* info, INode* node)
{
    Object* obj = node->EvalWorldState(0).obj;

    if(obj->CanConvertToType(Class_ID(SPHERE_CLASS_ID, 0)) == 0)
        return 0;

    GenSphere* s = (GenSphere*)obj->ConvertToType(0, Class_ID(SPHERE_CLASS_ID, 0));

    IParamBlock* pblock = ((SimpleObject*)obj)->pblock;
    int num_param = pblock->NumParams();

    info->id = lwGetMaskIDWithName(MASK_BOUNDING_SPHERE, node->GetName());

    lwSphere* sphere = &info->sphere;
    lwMatrix44* mat_sphere = &info->mat;

    for(int i = 0; i < num_param; i++)
    {
        TSTR param_name = ((SimpleObject*)obj)->GetParameterName(i);

        if(_tcscmp(param_name, "Radius"))
            continue;
        
        switch(pblock->GetParameterType(i))
        {
        case TYPE_BOOL:
            break;
        case TYPE_INT:
            break;
        case TYPE_FLOAT:
            pblock->GetValue(i, 0, sphere->r, FOREVER);
            break;
        case TYPE_POINT3:
            break;
        case TYPE_RGBA:
            break;
        default:
            ;
        }
        
        break;
    }

    sphere->c = lwVector3(0.0f, 0.0f, 0.0f);

    Matrix3 m3;
    lwGetNodeLocalTM(node, &m3, 0);

    FormM16(m3, (float*)&mat_sphere->_11);

    
    if(g_coord_type & LW_COORD_TYPE_LEFTHAND)
    {
        lwMatrix44MetathesisYZ(mat_sphere, mat_sphere);                
    }

    if(g_coord_type & LW_COORD_TYPE_MINDPOWER)
    {
        lwMatrix44MetathesisMindPower(mat_sphere, mat_sphere);
    }

    return 1;
}

int lwExpHelperBox(lwHelperBoxInfo* info, INode* node)
{
    Object* obj = node->EvalWorldState(0).obj;
    if(obj->CanConvertToType(triObjectClassID) == 0)
        return 0;

	TriObject *tri = (TriObject*)obj->ConvertToType(0, triObjectClassID);
    
    Mesh& mesh = tri->GetMesh();
    mesh.buildBoundingBox();

    Box3 b = mesh.getBoundingBox();
    lwConvertBox3(&info->box, &b);

    Matrix3 m3;
    lwGetNodeLocalTM(node, &m3, 0);

    char* node_name = node->GetName();

    info->id = lwGetMaskIDWithName(MASK_HELPER_BOX, node_name);
    
    //if(LW_SUCCEEDED(lwCheckMaskNameToken('c', node_name)))
    //{
    //    info->type = HELPER_BOX_TYPE_CHAIR;
    //}
    lwGetMaskNameWithName(info->name, node_name);

    lwMatrix44* mat_box = &info->mat;
    FormM16(m3, (float*)&mat_box->_11);

    //lwMatrix44 m4;
    //FormM16(m3, (float*)&m4._11);
    //lwVec3Mat44Mul(&box->p, &m4);
    
    if(g_coord_type & LW_COORD_TYPE_LEFTHAND)
    {
        lwMatrix44MetathesisYZ(mat_box, mat_box);                
    }

    if(g_coord_type & LW_COORD_TYPE_MINDPOWER)
    {
        lwMatrix44MetathesisMindPower(mat_box, mat_box);
    }

    return 1;
}

DWORD GetNodeSeqID(INode* node, INode* node_seq[], int node_num)
{
    for(int i = 0; i < node_num; i++)
    {
        if(node == node_seq[i])
            return i;
    }

    return LW_INVALID_INDEX;
}

void lwEnumObjNode(INode* node_seq[], int* node_num, int max_node_seq, INode* node)
{
    if(*node_num >= max_node_seq)
        return;

    node_seq[*node_num] = node;

    *node_num += 1;

    // enumerate child node
    int child_num = node->NumberOfChildren();
    INode* child_node;

    for(int i = 0; i < child_num; i++) 
    {
        child_node = node->GetChildNode(i);

        if(_tcsncmp(child_node->GetName(), "obj_", 4))
            continue;

        lwEnumObjNode(node_seq, node_num, max_node_seq, child_node);
    }

}

void lwEnumBoneBaseInfo(lwBoneBaseInfo* bone_seq, int* bone_num, int parent_id, int max_bone_seq, INode* node_seq[], INode* node)
{
    if(*bone_num >= max_bone_seq)
        return;

    //if(node->IsHidden())
    //    return;

    if(bone_seq)
    {
        lwBoneBaseInfo* b = &bone_seq[*bone_num];
        b->id = *bone_num;
        b->parent_id = parent_id;
        strcpy(b->name, node->GetName());
    }

    if(node_seq)
    {
        node_seq[*bone_num] = node;
    }

    DWORD p_id = *bone_num;

    *bone_num += 1;

    // enumerate child node
    int child_num = node->NumberOfChildren();
    INode* child_node;

    for(int i = 0; i < child_num; i++) 
    {
        child_node = node->GetChildNode(i);

        char* child_name = child_node->GetName();

        if(LW_SUCCEEDED(lwCheckMaskName(MASK_HELPER_DUMMY, child_name)))
            continue;

        lwEnumBoneBaseInfo(bone_seq, bone_num, p_id, max_bone_seq, node_seq, child_node);
    }
}

void lwEnumBoneBaseInfoBySkin(lwBoneBaseInfo* bone_seq, int* bone_num, int max_bone_seq, INode* node_seq[], INode* skin_node)
{
    Modifier* mod = GetSkinModifier(skin_node);
    ISkin* skin = (ISkin*)mod->GetInterface(I_SKIN);
    ISkinContextData* skin_cd = skin->GetContextInterface(skin_node);

    int bone_id = skin_cd->GetAssignedBone(0, 0);
    INode* root_node = skin->GetBone(bone_id);

    INode* node_parent = root_node;

    while(node_parent->GetParentNode())
    {
        root_node = node_parent;

        node_parent = node_parent->GetParentNode();
    }


    lwEnumBoneBaseInfo(bone_seq, bone_num, LW_INVALID_INDEX, max_bone_seq, node_seq, root_node);
}

void lwEnumBoneBaseInfoByPhysique(lwBoneBaseInfo* bone_seq, int* bone_num, int max_bone_seq, INode* node_seq[], INode* phy_node)
{
    Modifier* mod = GetPhysiqueModifier(phy_node);

	IPhysiqueExport* phy = (IPhysiqueExport*)mod->GetInterface(I_PHYINTERFACE);
	IPhyContextExport* phy_ce = (IPhyContextExport*)phy->GetContextInterface(phy_node);

    // get first vertex export interface
    IPhyVertexExport* ve = phy_ce->GetVertexInterface(0);
    assert(ve);

    INode* root_node;

    switch(ve->GetVertexType())
    {
    case RIGID_BLENDED_TYPE:
        root_node = ((IPhyBlendedRigidVertex*)ve)->GetNode(0);
        break;
    case RIGID_TYPE:
        root_node = ((IPhyRigidVertex*)ve)->GetNode();
        break;
    default:
        assert(0);
    }

    INode* node_parent = root_node;

    while(node_parent->GetParentNode())
    {
        root_node = node_parent;

        node_parent = node_parent->GetParentNode();
    }


    lwEnumBoneBaseInfo(bone_seq, bone_num, LW_INVALID_INDEX, max_bone_seq, node_seq, root_node);

}
INode* lwGetNodeBoneRootNode(INode* node)
{
    INode* root_node = 0;
    INode* node_parent = 0;
    Modifier* mod_skin = 0;
    Modifier* mod_phy = 0;

    if(mod_skin = GetSkinModifier(node))
    {
        ISkin* skin = (ISkin*)mod_skin->GetInterface(I_SKIN);
        ISkinContextData* skin_cd = skin->GetContextInterface(node);

        int bone_id = skin_cd->GetAssignedBone(0, 0);
        root_node = skin->GetBone(bone_id);
    }
    else if(mod_phy = GetPhysiqueModifier(node))
    {
        IPhysiqueExport* phy = (IPhysiqueExport*)mod_phy->GetInterface(I_PHYINTERFACE);
        IPhyContextExport* phy_ce = (IPhyContextExport*)phy->GetContextInterface(node);

        // get first vertex export interface
        IPhyVertexExport* ve = phy_ce->GetVertexInterface(0);
        assert(ve);

        switch(ve->GetVertexType())
        {
        case RIGID_BLENDED_TYPE:
            root_node = ((IPhyBlendedRigidVertex*)ve)->GetNode(0);
            break;
        case RIGID_TYPE:
            root_node = ((IPhyRigidVertex*)ve)->GetNode();
            break;
        default:
            assert(0);
        }

    }
    else
    {
        return 0;
    }

    node_parent = root_node;

    while(node_parent->GetParentNode())
    {
        root_node = node_parent;

        node_parent = node_parent->GetParentNode();

        if(LW_FAILED(lwCheckMaskName(MASK_BONE, node_parent->GetName()))
            && LW_FAILED(lwCheckMaskName(MASK_BONE2, node_parent->GetName()))
            && LW_FAILED(lwCheckMaskName(MASK_BONE3, node_parent->GetName())))
        {
            break;
        }

    }

    return root_node;
}

LW_RESULT lwEnumBoneNode(INode* root_node, INode** out_node_seq, int* out_node_num, int node_seq_size)
{
    LW_RESULT ret = LW_RET_FAILED;

    if(*out_node_num >= node_seq_size)
        goto __ret;

    out_node_seq[*out_node_num] = root_node;

    *out_node_num += 1;

    // enumerate child node
    int child_num = root_node->NumberOfChildren();
    INode* child_node;

    for(int i = 0; i < child_num; i++) 
    {
        child_node = root_node->GetChildNode(i);
        const char* child_node_name = child_node->GetName();

        if(LW_FAILED(lwCheckMaskName(MASK_BONE, child_node_name))
            && LW_FAILED(lwCheckMaskName(MASK_BONE2, child_node_name))
            && LW_FAILED(lwCheckMaskName(MASK_BONE3, child_node_name)))
        {
            continue;
        }

        if(LW_FAILED(lwEnumBoneNode(child_node, out_node_seq, out_node_num, node_seq_size)))
            goto __ret;
    }

    ret = LW_RET_OK;
__ret:
    return ret;

}

int _DoExpMtlData(lwMtlTexInfo* mi, Mtl* mtl)
{    
    lwTexInfo* tex_info = &mi->tex_seq[0];
    lwMaterial* m = &mi->mtl;
    lwRenderStateAtom* rs = mi->rs_set;

    if(mtl) 
    {
        char* mtl_name = ((StdMat*)mtl)->GetName();

        memset(m, 0, sizeof(lwMaterial));

        m->amb.r = mtl->GetAmbient().r;
        m->amb.g = mtl->GetAmbient().g;
        m->amb.b = mtl->GetAmbient().b;
        m->dif.r = mtl->GetDiffuse().r;
        m->dif.g = mtl->GetDiffuse().g;
        m->dif.b = mtl->GetDiffuse().b;
        m->spe.r = mtl->GetSpecular().r;
        m->spe.g = mtl->GetSpecular().g;
        m->spe.b = mtl->GetSpecular().b;
        m->amb.a = m->dif.a = m->spe.a = 1.0f;

        // opaque value
        //mi->opacity = 1.0f - mtl->GetXParency();
        mi->opacity = ((StdMat*)mtl)->GetOpacity(0);

        int u = 0;
        //if(mtl->ClassID() == Class_ID(DMTL_CLASS_ID, 0))
        {
            if(((StdMat*)mtl)->GetTwoSided())
            {
                RSA_VALUE(&rs[u++], D3DRS_CULLMODE, D3DCULL_NONE);
            }
        }

        DWORD dest_value = D3DBLEND_ONE;

        switch(((StdMat*)mtl)->GetTransparencyType())
        {
        case TRANSP_SUBTRACTIVE:
            mi->transp_type = MTLTEX_TRANSP_SUBTRACTIVE;
            
            RSA_VALUE(&rs[u++], D3DRS_SRCBLEND, D3DBLEND_ZERO);
            RSA_VALUE(&rs[u++], D3DRS_DESTBLEND, D3DBLEND_INVSRCCOLOR);
            RSA_VALUE(&rs[u++], D3DRS_ZWRITEENABLE, FALSE);
            RSA_VALUE(&rs[u++], D3DRS_LIGHTING, FALSE);
            RSA_VALUE(&rs[u++], D3DRS_FOGENABLE, FALSE);
            break;
        case TRANSP_ADDITIVE:
            mi->transp_type = MTLTEX_TRANSP_ADDITIVE;

            if(LW_SUCCEEDED(lwCheckMaskNameToken('a', mtl_name)))
            {
                int i = 0;
                if(LW_SUCCEEDED(lwGetMaskNameTokenParamI(&i, 'a', mtl_name)))
                {
                    switch(i)
                    {
                    case 0:
                        dest_value = D3DBLEND_ONE;
                        break;
                    case 1:
                        dest_value = D3DBLEND_SRCCOLOR;
                        break;
                    case 2:
                        dest_value = D3DBLEND_INVSRCCOLOR;
                        break;
                    default:
                        dest_value = D3DBLEND_ONE;
                    }
                }
            }

            RSA_VALUE(&rs[u++], D3DRS_SRCBLEND, D3DBLEND_ONE);
            RSA_VALUE(&rs[u++], D3DRS_DESTBLEND, dest_value);
            RSA_VALUE(&rs[u++], D3DRS_ZWRITEENABLE, FALSE);
            RSA_VALUE(&rs[u++], D3DRS_LIGHTING, FALSE);
            RSA_VALUE(&rs[u++], D3DRS_FOGENABLE, FALSE);
            break;
        case TRANSP_FILTER:
            mi->transp_type = MTLTEX_TRANSP_FILTER;
            break;
        }

        if(LW_SUCCEEDED(lwCheckMaskNameToken('k', mtl_name)))
        {
            RSA_VALUE(&rs[u++], D3DRS_ALPHATESTENABLE, TRUE);
            RSA_VALUE(&rs[u++], D3DRS_ALPHAFUNC, D3DCMP_GREATER);
            RSA_VALUE(&rs[u++], D3DRS_ALPHAREF, 0);


            if(LW_SUCCEEDED(lwCheckMaskNameToken('c', mtl_name)))
            {
                lwGetMaskNameTokenParamI((int*)&tex_info->colorkey.color, 'c', mtl_name);
                tex_info->colorkey_type = COLORKEY_TYPE_COLOR;
            }
            else if(LW_SUCCEEDED(lwCheckMaskNameToken('p', mtl_name)))
            {
                tex_info->colorkey_type = COLORKEY_TYPE_PIXEL;
            }
        }
            
            
        Texmap* tex = mtl->GetSubTexmap(ID_DI);
        if(tex == 0) 
        {
            MessageBox(0,"object was not assigned texture","error",MB_OK);
            return 0;
        }

        char name[256];
        _tcscpy(name,((BitmapTex*)tex)->GetMapName());
        for(char* ptr = name + _tcslen(name) - 1; *ptr!='\\'&&ptr>name; ptr--)
            ;

        tex_info->type = TEX_TYPE_FILE;
        tex_info->stage = 0;
        tex_info->level = 1;
        tex_info->usage = 0;
        tex_info->format = D3DFMT_UNKNOWN;
        tex_info->pool = D3DPOOL_DEFAULT;
        _tcscpy(tex_info->file_name, ptr + 1);

        if(LW_SUCCEEDED(lwCheckMaskNameToken('f', mtl_name)))
        {
            D3DFORMAT d3d_fmt;
            int fmt;
            lwGetMaskNameTokenParamI((int*)&fmt, 'f', mtl_name);
            switch(fmt)
            {
            case 565:
                d3d_fmt = D3DFMT_R5G6B5;
                break;
            case 555:
                d3d_fmt = D3DFMT_X1R5G5B5;
                break;
            case 1555:
                d3d_fmt = D3DFMT_A1R5G5B5;
                break;
            case 4444:
                d3d_fmt = D3DFMT_A4R4G4B4;
                break;
            case 8888:
                d3d_fmt = D3DFMT_A8R8G8B8;
                break;
            default:
                d3d_fmt = D3DFMT_UNKNOWN;
            }

            tex_info->format = d3d_fmt;            
        }

        //Bitmap* bm = ((BitmapTex*)tex)->GetBitmap(0);
        //BitmapInfo bmi;
        //BMMRES bmmres = bm->OpenOutput(&bmi);
        //if(bmmres == 
    }
    else 
    {
		// default material info        
		m->amb.r = 0.75f;
		m->amb.g = 0.75f;
		m->amb.b = 0.75f;
		m->dif.r = 0.75f;
		m->dif.g = 0.75f;
		m->dif.b = 0.75f;
		m->dif.r = 0.75f;
		m->dif.g = 0.75f;
		m->dif.b = 0.75f;

        m->amb.a = m->dif.a = m->spe.a = 1.0f;
    }

    return 1;

}

/*
it looks like you have done most of the hard work - all you need is the 
IParamblock. TO do this take your UVGen pointer and use the SubAnim system 
to get it, you will find it at index zero.

Now you have the IParamblock you could go through all its subanims finding 
the correct index and then use GetController(index). 
Or I could be nice and give you the paramindex - 


Oh OK then here you go...

#define PB_UOFFS 0 
#define PB_VOFFS 1
#define PB_USCL 2
#define PB_VSCL 3
#define PB_UANGLE 4
#define PB_VANGLE 5
#define PB_WANGLE 6
#define PB_BLUR 7
#define PB_NSAMT 8
#define PB_NSSIZ 9
#define PB_NSLEV 10
#define PB_NSPHS 11
#define PB_BLUROFFS 12

Hope this helps

Neil 

-------------
Neil Hazzard
Sparks3D
Discreet
*/
// "U Offset"
// "V Offset"
// "U Tiling"
// "V Tiling"
// "U Angle"
// "V Angle"
// "W Angle"



Control* _GetAnimatableControlWithName(Animatable *anim, char *name)
{
    int w, n;
    Control *c;
    TSTR ctrl_name;
    Animatable* sub_anim;

    if(!anim)
        return(NULL);

    n = anim->NumSubs();

    for(w = 0; w < n; w++) 
    {
        ctrl_name = anim->SubAnimName(w);

        if(!strcmp(ctrl_name, name)) 
        {
            c = GetControlInterface(anim->SubAnim(w));
            return c;
        }

        sub_anim = anim->SubAnim(w);

        if(sub_anim)
        {
            c = _GetAnimatableControlWithName(sub_anim, name);

            if(c) 
            {
                return c;
            }
        }
    }

    return(0);
}


int _DoExportMaterial(lwMtlTexInfo* mtl_buf, Mtl* mtl_seq[], int* mtl_num, INode* node)
{
    Object* obj = node->EvalWorldState(0).obj;

    if(obj->CanConvertToType(triObjectClassID) == 0)
        return 0;

    TriObject* tri = (TriObject*)obj->ConvertToType(0, triObjectClassID);
    Mtl* mtl = node->GetMtl();

    int i;

    if(mtl == 0) 
    {
        // no material, we insert an default material
        (*mtl_num) = 1;
        if(_DoExpMtlData(&mtl_buf[0], 0) == 0)
            goto __ret_error;
    }
    else {
        if(mtl->ClassID() == Class_ID(DMTL_CLASS_ID, 0)) 
        {
            // standard 3ds max material
            // This material does not have any sub-materials
            //StdMat* std_mtl = (StdMat*)mtl;
            (*mtl_num) = 1;
            if(_DoExpMtlData(&mtl_buf[0], mtl) == 0)
                goto __ret_error;
            mtl_seq[0] = mtl;
        }
        else if(mtl->ClassID() == Class_ID(MULTI_CLASS_ID, 0)) 
        {
            // Multi/Sub-Object material
            int sub_mtl_num = mtl->NumSubMtls();
            if(sub_mtl_num == 0) 
            {
                //MessageBox(0, "Multi-material obj error", "error", MB_OK);
                assert(0 && "Multi-material obj error");
                return 0;
                // 
            }

            (*mtl_num) = 0;
            //memset((*mtl_buf), 0, sizeof(lwMtlTexInfo) * (*mtl_num));

            for(i = 0; i < sub_mtl_num; i++) 
            {
                Mtl* sub_mtl = mtl->GetSubMtl(i);

                if(sub_mtl == 0)
                {
                    continue;
                }

                if(sub_mtl->ClassID() != Class_ID(DMTL_CLASS_ID, 0))
                {
                    MessageBox(NULL, "SubMtl Setting Error\ncall Jack", "error", MB_OK);
                    continue;
                }

                if(_DoExpMtlData(&mtl_buf[i], sub_mtl) == 0) 
                {
                    goto __ret_error;
                }

                mtl_seq[*mtl_num] = sub_mtl;
                (*mtl_num)++;
            }

        }
    }

    return 1;

__ret_error:
    return 0;
}

int _DoExpTexData(lwTexInfo* ti, Texmap* tex)
{
 //   char name[256];
 //   _tcscpy(name,((BitmapTex*)tex)->GetMapName());
 //   for(char* ptr = name + _tcslen(name) - 1; *ptr!='\\'&&ptr>name; ptr--)
 //       ;
 //   _tcscpy(ti->file, ptr + 1);

 //   Control* ctrl_u = _GetAnimatableControlWithName(tex, "U Offset");
 //   Control* ctrl_v = _GetAnimatableControlWithName(tex, "V Offset");
 //   Control* ctrl_wa = _GetAnimatableControlWithName(tex, "W Angle");

 //   if(ctrl_u == 0 && ctrl_v == 0 && ctrl_wa == 0) {
 //       return 0;
 //   }

 //   ti->anim_data = LW_NEW(lwTexAnimItem);

 //   int tpf = GetTicksPerFrame();

 //   int i;

 //   TimeValue t;
 //   Interval valid = FOREVER;

 //   lwIndexFloat* u_data;
 //   lwIndexFloat* v_data;
 //   lwIndexFloat* wa_data;
 //   int u_num = 0;
 //   int v_num = 0;
 //   int wa_num = 0;

	//// U Offset
	//if(ctrl_u) {

	//	u_num = ctrl_u->NumKeys();

	//	if(u_num != NOT_KEYFRAMEABLE && u_num > 0) {

 //           u_data = LW_NEW(lwIndexFloat[u_num]);

 //           for(i = 0; i < u_num; i++) {
 //               t = ctrl_u->GetKeyTime(i);
 //               u_data[i].id = t / tpf;
 //               ctrl_u->GetValue(t, (void*)&u_data[i].data, valid);
 //           }
	//	}
	//}

	//// V Offset
 //   if(ctrl_v) {

 //       v_num = ctrl_v->NumKeys();

 //       if(v_num != NOT_KEYFRAMEABLE && v_num > 0) {

 //           v_data = LW_NEW(lwIndexFloat[v_num]);

 //           for(i = 0; i < v_num; i++) {
 //               t = ctrl_v->GetKeyTime(i);
 //               v_data[i].id = t / tpf;
 //               ctrl_v->GetValue(t, (void*)&v_data[i].data, valid);
 //           }
 //       }
 //   }

	//// W Angle
 //   if(ctrl_wa) {

 //       wa_num = ctrl_wa->NumKeys();

 //       if(wa_num != NOT_KEYFRAMEABLE && wa_num > 0) {

 //           wa_data = LW_NEW(lwIndexFloat[wa_num]);

 //           for(i = 0; i < wa_num; i++) {
 //               t = ctrl_wa->GetKeyTime(i);
 //               wa_data[i].id = t / tpf;
 //               ctrl_wa->GetValue(t, (void*)&wa_data[i].data, valid);
 //           }
 //       }
 //   }

 //   // make lwTexAnimData
 //   int frame = 0;

 //   if(u_num > 0)
 //       frame = u_data[u_num-1].id;
 //   if(v_num > 0)
 //       if(frame < v_data[v_num-1].id)
 //           frame = v_data[v_num-1].id;
 //   if(wa_num > 0)
 //       if(frame < wa_data[wa_num-1].id)
 //           frame = wa_data[wa_num-1].id;

 //   if(frame == 0)
 //       return 0;

 //   frame += 1;
 //   
 //   lwTexAnimData* data = LW_NEW(lwTexAnimData[frame]);
 //   memset(data, 0, sizeof(lwTexAnimData) * frame);

 //   int m, n;
 //   int mn, mi, ni;
 //   float mv, nv;
 //   
 //   // set u data
 //   if(u_num > 0) {
 //       m = 0;
 //       n = 1;
 //       while(n < u_num) {

 //           mi = u_data[m].id;
 //           ni = u_data[n].id;
 //           mn = ni - mi;
 //           mv = u_data[m].data;
 //           nv = u_data[n].data;

 //           for(i = mi; i < ni; i++) {
 //               data[i].u = mv * (ni - i) / (float)mn + nv * (i - mi) / (float)mn;
 //           }

 //           m = n;
 //           n += 1;
 //       }

 //       for(i = u_data[m].id; i < frame; i++)
 //           data[i].u = u_data[m].data;
 //   }

 //   // set v data
 //   if(v_num > 0) {
 //       m = 0;
 //       n = 1;
 //       while(n < v_num) {

 //           mi = v_data[m].id;
 //           ni = v_data[n].id;
 //           mn = ni - mi;
 //           mv = v_data[m].data;
 //           nv = v_data[n].data;

 //           for(i = mi; i < ni; i++) {
 //               data[i].v = mv * (ni - i) / (float)mn + nv * (i - mi) / (float)mn;
 //           }

 //           m = n;
 //           n += 1;
 //       }

 //       for(i = v_data[m].id; i < frame; i++)
 //           data[i].v = v_data[m].data;
 //   }

 //   // set w angle data
 //   if(wa_num > 0) {
 //       m = 0;
 //       n = 1;
 //       while(n < wa_num) {

 //           mi = wa_data[m].id;
 //           ni = wa_data[n].id;
 //           mn = ni - mi;
 //           mv = wa_data[m].data;
 //           nv = wa_data[n].data;

 //           for(i = mi; i < ni; i++) {
 //               data[i].w_angle = mv * (ni - i) / (float)mn + nv * (i - mi) / (float)mn;
 //           }

 //           m = n;
 //           n += 1;
 //       }

 //       for(i = wa_data[m].id; i < frame; i++)
 //           data[i].w_angle = wa_data[m].data;
 //   }


 //   LW_DELETE_A(u_data);
 //   LW_DELETE_A(v_data);
 //   LW_DELETE_A(wa_data);

 //   ti->anim_data->num = frame;
 //   ti->anim_data->data = data;

    return 1;
}

LW_RESULT lwCheckNodeAnimDataMatrix(INode* node)
{
    LW_RESULT ret = LW_RET_FAILED;

    int num;
	int frame = 0;
	Control* ctrl;

    if(node->GetTMController() == 0) 
        goto __ret;

    // translation control
	ctrl = node->GetTMController()->GetPositionController();
	if(ctrl) 
    {
		num = ctrl->NumKeys();
		if(num != NOT_KEYFRAMEABLE && num > 0) 
        {
            if(ctrl->GetKeyTime(num - 1) > 0)
            {
                goto __addr_ret_ok;
            }
		}
	}

	// rotation control
	ctrl = node->GetTMController()->GetRotationController();
	if(ctrl) 
    {
		num = ctrl->NumKeys();
		if(num != NOT_KEYFRAMEABLE && num > 0) 
        {
            if(ctrl->GetKeyTime(num - 1) > 0)
            {
                goto __addr_ret_ok;
            }
		}
	}

	// scale control
	ctrl = node->GetTMController()->GetScaleController();
	if(ctrl) 
    {
		num = ctrl->NumKeys();
		if(num != NOT_KEYFRAMEABLE && num > 0) 
        {			
            if(ctrl->GetKeyTime(num - 1) > 0)
            {
                goto __addr_ret_ok;
            }
		}
	}

    goto __ret;

__addr_ret_ok:
    ret = LW_RET_OK;
__ret:
    return ret;
}

LW_RESULT lwExpAnimDataMatrix(lwAnimDataMatrix* anim_data, INode* node)
{
    int i, num;
	Interval valid;
    TimeValue t;
	Control* ctrl;
    lwMatrix43* mat_buf;

    int tpf = GetTicksPerFrame();

	int frame = 0;
	int total_frame = 0;

    if(node->GetTMController() == 0) 
    {
		return LW_RET_FAILED;
    }

	// translation control
	ctrl = node->GetTMController()->GetPositionController();
	if(ctrl) 
    {
		num = ctrl->NumKeys();
		if(num != NOT_KEYFRAMEABLE && num > 0) 
        {

			frame = ctrl->GetKeyTime(num - 1) / tpf;
			if(frame > total_frame)
				total_frame = frame;
		}
	}

	// rotation control
	ctrl = node->GetTMController()->GetRotationController();
	if(ctrl) 
    {
		num = ctrl->NumKeys();
		if(num != NOT_KEYFRAMEABLE && num > 0) 
        {
			frame = ctrl->GetKeyTime(num - 1) / tpf;
			if(frame > total_frame)
				total_frame = frame;
		}
	}

	// scale control
	ctrl = node->GetTMController()->GetScaleController();
	if(ctrl) 
    {
		num = ctrl->NumKeys();
		if(num != NOT_KEYFRAMEABLE && num > 0) 
        {			
			frame = ctrl->GetKeyTime(num - 1) / tpf;
			if(frame > total_frame)
				total_frame = frame;
		}
	}


    if(total_frame == 0) 
    {
		return LW_RET_FAILED;
    }

    total_frame += 1;

    mat_buf = LW_NEW(lwMatrix43[total_frame]);
    Matrix3 m3;

	t = 0;
	for(i = 0; i < total_frame; i++) 
    {		

        lwGetNodeLocalTM(node, &m3, t);
        //mat_buf[i] = *(lwMatrix43*)&node->GetObjectTM(t);
        mat_buf[i] = *(lwMatrix43*)&m3;

		t += tpf;
	}

    // convert coordinate
    if(g_coord_type & LW_COORD_TYPE_LEFTHAND)
    {
        for(i = 0; i < total_frame; i++)
        {
            lwMatrix43MetathesisYZ(&mat_buf[i], &mat_buf[i]);
        }

        if(g_coord_type & LW_COORD_TYPE_MINDPOWER)
        {
            for(i = 0; i < total_frame; i++)
            {
                lwMatrix43MetathesisMindPower(&mat_buf[i], &mat_buf[i]);
            }
        }
    }

    anim_data->_mat_seq = mat_buf;
    anim_data->_frame_num = total_frame;    

    //// insert default pose info
    //lwPoseInfo pi;
    //memset(&pi, 0,sizeof(pi));
    //pi.start = 0;
    //pi.end = total_frame - 1;

    //anim_data->_pose_ctrl.InsertPose(0, &pi, 1);

    return LW_RET_OK;

}

LW_RESULT lwExpAnimDataBone(lwAnimDataBone* data, const lwBoneBaseInfo* bone_base_seq, int bone_num, INode* node_seq[], Interface *io)
{
    int i, j;

    // fill base info
    data->_base_seq = LW_NEW(lwBoneBaseInfo[bone_num]);
    memcpy(data->_base_seq, bone_base_seq, sizeof(lwBoneBaseInfo) * bone_num);
    data->_bone_num = bone_num;


    // fill animation frame matrix

    int tpf = GetTicksPerFrame();
    Interval time = io->GetAnimRange();
    TimeValue t_start = time.Start();
    TimeValue t_end = time.End();

    const char* root_name = node_seq[0]->GetName();

    int s, e;

    if(LW_SUCCEEDED(lwGetMaskNameTokenParamI(&s, 's', root_name))
        && LW_SUCCEEDED(lwGetMaskNameTokenParamI(&e, 'e', root_name)))
    {
        if(s < e)
        {
            t_start = s * tpf;
            t_end = e * tpf;
        }
    }

    // frame count
    int frame = (t_end - t_start) / tpf  + 1;
    int frame_time;


    const lwBoneBaseInfo* b;
    lwBoneKeyInfo* key;

    Matrix3 mat_parent, mat_node, mat_local;
    lwMatrix44 mat44;

    lwBoneKeyInfo* bfi = LW_NEW(lwBoneKeyInfo[bone_num]);    
    

    int root_bone;

    for(i = 0; i < bone_num; i++)
    {
        b = &bone_base_seq[i];
        root_bone = (b->parent_id == LW_INVALID_INDEX);

        key = &bfi[i];

        switch(data->_key_type)
        {
        case BONE_KEY_TYPE_MAT43:
            key->mat43_seq = LW_NEW(lwMatrix43[frame]);
            break;
        case BONE_KEY_TYPE_MAT44:
            key->mat44_seq = LW_NEW(lwMatrix44[frame]);
            break;
        case BONE_KEY_TYPE_QUAT:
            key->pos_seq = LW_NEW(lwVector3[frame]);
            key->quat_seq = LW_NEW(lwQuaternion[frame]);
            break;
        default:
            assert(0);
        }


        for(j = 0; j < frame; j++)
        {
            frame_time = t_start + j * tpf;

            if(root_bone)
            {
                mat_local = node_seq[i]->GetNodeTM(frame_time);
            }
            else
            {
                lwGetNodeLocalTM(node_seq[i], &mat_local, frame_time);
            }

            // begin set data      
            FormM16(mat_local, (float*)&mat44._11);

            if(g_coord_type & LW_COORD_TYPE_LEFTHAND)
            {
                lwMatrix44MetathesisYZ(&mat44, &mat44);

            }
            if(g_coord_type & LW_COORD_TYPE_MINDPOWER)
            {
                lwMatrix44MetathesisMindPower(&mat44, &mat44);
            }

            switch(data->_key_type)
            {
            case BONE_KEY_TYPE_MAT43:
                lwConvertMat44ToMat43(&key->mat43_seq[j], &mat44);
                break;
            case BONE_KEY_TYPE_MAT44:
                key->mat44_seq[j] = mat44;
                break;
            case BONE_KEY_TYPE_QUAT:
                key->pos_seq[j] = *(lwVector3*)&mat44._41;                
                lwMatrix44ToQuaternion(&key->quat_seq[j], &mat44);

                break;
            default:
                assert(0);
            }
        }
    }


    data->_key_seq = bfi;
    data->_frame_num = frame;


    // fill init inverse matrix
    Matrix3* local_buf = LW_NEW( Matrix3[bone_num]);

    data->_invmat_seq = LW_NEW(lwMatrix44[bone_num]);

    Matrix3 mat_inv;
    lwMatrix44* pmat44;

    for(i = 0; i < bone_num; i++)
    {
        b = &bone_base_seq[i];


#if 0
        lwGetNodeLocalTM(node_seq[i], &mat_local, 0);

        while(b->parent_id != LW_INVALID_INDEX)
        {
            lwGetNodeLocalTM(node_seq[b->parent_id], &mat_parent, 0);
            mat_local = mat_local * mat_parent;

            b = &base_seq[b->parent_id];
        }
        mat_inv = Inverse(mat_local);

#else
        lwGetNodeLocalTM(node_seq[i], &local_buf[i], 0);
        if(b->parent_id != LW_INVALID_INDEX)
        {
            local_buf[i] = local_buf[i] * local_buf[b->parent_id];
        }
#endif
        mat_inv = Inverse(local_buf[i]);

        pmat44 = &data->_invmat_seq[i];

        FormM16(mat_inv, (float*)&pmat44->_11);


        if(g_coord_type & LW_COORD_TYPE_LEFTHAND)
        {
            lwMatrix44MetathesisYZ(pmat44, pmat44);
        }

        if(g_coord_type & LW_COORD_TYPE_MINDPOWER)
        {
            lwMatrix44MetathesisMindPower(pmat44, pmat44);
        }
    }


    // get dummy object
    int child_node_num;
    Object* node_obj;
    INode* dummy_node;

    data->_dummy_seq = LW_NEW(lwBoneDummyInfo[99]);
    data->_dummy_num = 0;

    // set dummy info
    for(i = 0; i < bone_num; i++)
    {
        child_node_num = node_seq[i]->NumberOfChildren();

        for(j = 0; j < child_node_num; j++)
        {
            dummy_node = node_seq[i]->GetChildNode(j);
            node_obj = dummy_node->EvalWorldState(0).obj;
            if((node_obj->ClassID() == Class_ID(DUMMY_CLASS_ID , 0))
                && LW_SUCCEEDED(lwCheckMaskName(MASK_HELPER_DUMMY, dummy_node->GetName())))
            {
                lwGetBoneDummyInfo(&data->_dummy_seq[data->_dummy_num++], i, &local_buf[i], dummy_node);
            }
        }
    }

    // set dummy_0
    for(i = 0; i < (int)data->_dummy_num; i++)
    {
        if(data->_dummy_seq[i].id == 0)
            break;
    }
    if(i == data->_dummy_num)
    {        
        for(j = data->_dummy_num; j > 0; j--)
        {
            data->_dummy_seq[j] = data->_dummy_seq[j-1];
        }

        data->_dummy_seq[0].id = 0;
        data->_dummy_seq[0].parent_bone_id = 0;
        FormM16(node_seq[0]->GetNodeTM(0), (float*)&data->_dummy_seq[0].mat);

        if(g_coord_type & LW_COORD_TYPE_LEFTHAND)
        {
            lwMatrix44MetathesisYZ(&data->_dummy_seq[0].mat, &data->_dummy_seq[0].mat);
        }

        if(g_coord_type & LW_COORD_TYPE_MINDPOWER)
        {
            lwMatrix44MetathesisMindPower(&data->_dummy_seq[0].mat, &data->_dummy_seq[0].mat);
        }

        data->_dummy_num++;
    }


    LW_DELETE_A(local_buf);

    //// insert default pose info
    //lwPoseInfo pi;
    //memset(&pi, 0,sizeof(pi));
    //pi.start = 0;
    //pi.end = data->_frame_num - 1;
    //
    //data->_pose_ctrl.InsertPose(0, &pi, 1);

    return LW_RET_OK;
}

LW_RESULT lwExpAnimKeySetPRS(lwAnimKeySetPRS* key_set, INode* node)
{
    DWORD i, num;
	Interval valid = FOREVER;
    TimeValue t;
	Control* ctrl;

    int tpf = GetTicksPerFrame();

    if(node->GetTMController() == 0) 
    {
		return LW_RET_FAILED;
    }

	// translation control
	ctrl = node->GetTMController()->GetPositionController();
	if(ctrl) 
    {
		num = ctrl->NumKeys();
		if(num != NOT_KEYFRAMEABLE && num > 0) 
        {
            key_set->pos_num = num;
            key_set->pos_seq = LW_NEW(lwKeyDataVector3[num]);

            lwKeyDataVector3* k;
            Point3 pos;

            for(i = 0; i < num; i++)
            {
                k = &key_set->pos_seq[i];

                t = ctrl->GetKeyTime(i);
                ctrl->GetValue(t, (void*)&pos, valid);
                k->key = t / tpf;
                k->data.x = pos.x;
                k->data.y = pos.y;
                k->data.z = pos.z;
            }

            key_set->frame_num = k->key;
		}
	}

	// rotation control
	ctrl = node->GetTMController()->GetRotationController();
	if(ctrl) 
    {
		num = ctrl->NumKeys();
		if(num != NOT_KEYFRAMEABLE && num > 0) 
        {
            key_set->rot_num = num;
            key_set->rot_seq = LW_NEW(lwKeyDataQuaternion[num]);

            lwKeyDataQuaternion* k;
            Quat quat;

            for(i = 0; i < num; i++)
            {
                k = &key_set->rot_seq[i];

                t = ctrl->GetKeyTime(i);
                ctrl->GetValue(t, (void*)&quat, valid);
                k->key = t / tpf;
                k->data.x = quat.x;
                k->data.y = quat.y;
                k->data.z = quat.z;
                k->data.w = quat.w;
            }

            if(k->key > key_set->frame_num)
            {
                key_set->frame_num = k->key;
            }
		}
	}

	// scale control
	ctrl = node->GetTMController()->GetScaleController();
	if(ctrl) 
    {
		num = ctrl->NumKeys();
		if(num != NOT_KEYFRAMEABLE && num > 0) 
        {			
            key_set->sca_num = num;
            key_set->sca_seq = LW_NEW(lwKeyDataVector3[num]);

            lwKeyDataVector3* k;
            ScaleValue sca;

            for(i = 0; i < num; i++)
            {
                k = &key_set->sca_seq[i];

                t = ctrl->GetKeyTime(i);
                ctrl->GetValue(t, (void*)&sca, valid);
                k->key = t / tpf;
                k->data.x = sca.s.x;
                k->data.y = sca.s.y;
                k->data.z = sca.s.z;
            }

            if(k->key > key_set->frame_num)
            {
                key_set->frame_num = k->key;
            }

		}
	}


    if(key_set->frame_num == 0)
    {
        return LW_RET_FAILED;
    }

    // convert coordinate
    float tmp;
    lwVector3* v;
    lwQuaternion* q;
    if(g_coord_type & LW_COORD_TYPE_LEFTHAND)
    {
        // position
        for(i = 0; i < key_set->pos_num; i++)
        {
            v = &key_set->pos_seq[i].data;
            tmp = v->y;
            v->y = v->z;
            v->z = tmp;
        }

        // rotation
        for(i = 0; i < key_set->rot_num; i++)
        {
            q = &key_set->rot_seq[i].data;
            tmp = q->y;
            q->y = q->z;
            q->z = tmp;
        }

        // scale
        for(i = 0; i < key_set->sca_num; i++)
        {
            v = &key_set->sca_seq[i].data;
            tmp = v->y;
            v->y = v->z;
            v->z = tmp;
        }

        if(g_coord_type & LW_COORD_TYPE_MINDPOWER)
        {
            // position
            for(i = 0; i < key_set->pos_num; i++)
            {
                v = &key_set->pos_seq[i].data;
                tmp = v->y;
                v->y = - v->z;
                v->z = tmp;
            }

            // rotation
            for(i = 0; i < key_set->rot_num; i++)
            {
                q = &key_set->rot_seq[i].data;
                tmp = q->y;
                q->y = - q->z;
                q->z = tmp;
            }

            // scale
            for(i = 0; i < key_set->sca_num; i++)
            {
                v = &key_set->sca_seq[i].data;
                tmp = v->y;
                v->y = v->z;
                v->z = tmp;
            }
        }
    }

    //
    return LW_RET_OK;

}

LW_RESULT lwExpAnimDataTexUV(lwAnimDataTexUV* data, Texmap* tex)
{

    Control* ctrl_u = _GetAnimatableControlWithName(tex, "U Offset");
    Control* ctrl_v = _GetAnimatableControlWithName(tex, "V Offset");
    Control* ctrl_wa = _GetAnimatableControlWithName(tex, "W Angle");

    if(ctrl_u == 0 && ctrl_v == 0 && ctrl_wa == 0) {
        return LW_RET_FAILED;
    }

    
    int tpf = GetTicksPerFrame();

    DWORD i;

    TimeValue t;
    Interval valid = FOREVER;

    lwIndexFloat* u_data = 0;
    lwIndexFloat* v_data = 0;
    lwIndexFloat* wa_data = 0;
    DWORD u_num = 0;
    DWORD v_num = 0;
    DWORD wa_num = 0;

	// U Offset
	if(ctrl_u) {

		u_num = ctrl_u->NumKeys();

		if(u_num != NOT_KEYFRAMEABLE && u_num > 0) {

            u_data = LW_NEW(lwIndexFloat[u_num]);

            for(i = 0; i < u_num; i++) {
                t = ctrl_u->GetKeyTime(i);
                u_data[i].id = t / tpf;
                ctrl_u->GetValue(t, (void*)&u_data[i].data, valid);
            }
		}
	}

	// V Offset
    if(ctrl_v) {

        v_num = ctrl_v->NumKeys();

        if(v_num != NOT_KEYFRAMEABLE && v_num > 0) {

            v_data = LW_NEW(lwIndexFloat[v_num]);

            for(i = 0; i < v_num; i++) {
                t = ctrl_v->GetKeyTime(i);
                v_data[i].id = t / tpf;
                ctrl_v->GetValue(t, (void*)&v_data[i].data, valid);
            }
        }
    }

	// W Angle
    if(ctrl_wa) {

        wa_num = ctrl_wa->NumKeys();

        if(wa_num != NOT_KEYFRAMEABLE && wa_num > 0) {

            wa_data = LW_NEW(lwIndexFloat[wa_num]);

            for(i = 0; i < wa_num; i++) {
                t = ctrl_wa->GetKeyTime(i);
                wa_data[i].id = t / tpf;
                ctrl_wa->GetValue(t, (void*)&wa_data[i].data, valid);
            }
        }
    }

    // make lwTexAnimData
    DWORD frame = 0;

    if(u_num > 0)
        frame = u_data[u_num-1].id;
    if(v_num > 0)
        if(frame < v_data[v_num-1].id)
            frame = v_data[v_num-1].id;
    if(wa_num > 0)
        if(frame < wa_data[wa_num-1].id)
            frame = wa_data[wa_num-1].id;

    if(frame == 0)
        return LW_RET_FAILED;

    frame += 1;
    
    lwKeyDataTexUV* uv_seq = LW_NEW(lwKeyDataTexUV[frame]);

    memset(uv_seq, 0, sizeof(lwKeyDataTexUV) * frame);

    DWORD m, n;
    DWORD mn, mi, ni;
    float mv, nv;
    
    // set u uv_seq
    if(u_num > 0) 
    {
        m = 0;
        n = 1;
        while(n < u_num) 
        {

            mi = u_data[m].id;
            ni = u_data[n].id;
            mn = ni - mi;
            mv = u_data[m].data;
            nv = u_data[n].data;

            for(i = mi; i < ni; i++) 
            {
                uv_seq[i].u = mv * (ni - i) / (float)mn + nv * (i - mi) / (float)mn;
            }

            m = n;
            n += 1;
        }

        for(i = u_data[m].id; i < frame; i++)
        {
            uv_seq[i].u = u_data[m].data;
        }
    }

    // set v uv_seq
    if(v_num > 0) 
    {
        m = 0;
        n = 1;
        while(n < v_num) 
        {

            mi = v_data[m].id;
            ni = v_data[n].id;
            mn = ni - mi;
            mv = v_data[m].data;
            nv = v_data[n].data;

            for(i = mi; i < ni; i++) 
            {
                uv_seq[i].v = mv * (ni - i) / (float)mn + nv * (i - mi) / (float)mn;
            }

            m = n;
            n += 1;
        }

        for(i = v_data[m].id; i < frame; i++)
        {
            uv_seq[i].v = v_data[m].data;
        }
    }

    // set w angle uv_seq
    if(wa_num > 0) 
    {
        m = 0;
        n = 1;
        while(n < wa_num) 
        {

            mi = wa_data[m].id;
            ni = wa_data[n].id;
            mn = ni - mi;
            mv = wa_data[m].data;
            nv = wa_data[n].data;

            for(i = mi; i < ni; i++) 
            {
                uv_seq[i].w_angle = mv * (ni - i) / (float)mn + nv * (i - mi) / (float)mn;
            }

            m = n;
            n += 1;
        }

        for(i = wa_data[m].id; i < frame; i++)
        {
            uv_seq[i].w_angle = wa_data[m].data;
        }
    }


    LW_SAFE_DELETE_A(u_data);
    LW_SAFE_DELETE_A(v_data);
    LW_SAFE_DELETE_A(wa_data);

    // begin convert data to matrix
    data->_frame_num = frame;
    data->_mat_seq = LW_NEW(lwMatrix44[frame]);

    lwMatrix44* mat;
    lwMatrix44 tmp;

    for(i = 0; i < frame; i++)
    {
        mat = &data->_mat_seq[i];

        lwMatrix44Identity(mat);

        if(uv_seq[i].w_angle != 0.0f) 
        {

#if 1
            // DirectX对于UV矩阵的的计算需要UV取负值才能得到需要的效果
            lwMatrix44Identity(&tmp);

            tmp._31 = - uv_seq[i].u - 0.5f;
            tmp._32 = uv_seq[i].v - 0.5f;

            float cos_w = cosf(uv_seq[i].w_angle);
            float sin_w = sinf(uv_seq[i].w_angle);

            mat->_11 = cos_w;
            mat->_12 = -sin_w;
            mat->_21 = sin_w;
            mat->_22 = cos_w;

            lwMatrix44Multiply(mat, &tmp, mat);

            mat->_31 += 0.5f;
            mat->_32 += 0.5f;
#endif
#if 0 
            float cos_w = cosf(uv_seq[i].w_angle);
            float sin_w = sinf(uv_seq[i].w_angle);

            mat->_11 = cos_w;
            mat->_12 = -sin_w;
            mat->_21 = sin_w;
            mat->_22 = cos_w;
#endif

        }
        else 
        {

            mat->_31 = -uv_seq[i].u;
            mat->_32 = uv_seq[i].v;
        }

    }
    // end

    //// insert default pose info
    //lwPoseInfo pi;
    //memset(&pi, 0,sizeof(pi));
    //pi.start = 0;
    //pi.end = frame;
    //
    //data->_pose_ctrl.InsertPose(0, &pi, 1);


    return LW_RET_OK;
}

LW_RESULT lwExpAnimDataTexImg(lwAnimDataTexImg* data, const lwTexInfo* base, DWORD num)
{
    data->_data_num = num;
    data->_data_seq = LW_NEW(lwTexInfo[num]);
    
    size_t len = _tcslen(base->file_name);
    for(const char* p = (base->file_name + len - 1); *p != '.' && p != base->file_name; p--)
        ;
    if(p == base->file_name)
    {
        MessageBox(NULL, "lwExpAnimDataTexImg error with invalid file name", "error", MB_OK);
        return LW_RET_FAILED;
    }

    int x = (int)(p - base->file_name);
    x -= 2;
    if(x<0)
    {
        MessageBox(NULL, "lwExpAnimDataTexImg error with invalid file name", "error", MB_OK);
        return LW_RET_FAILED;
    }

    int s = atoi(&base->file_name[x]);
    if(s < 0 || (s + num) > 99)
    {
        MessageBox(NULL, "lwExpAnimDataTexImg error with invalid file name", "error", MB_OK);
        return LW_RET_FAILED;
    }

    for(DWORD i = 0; i < num; i++)
    {
        data->_data_seq[i] = *base;

        data->_data_seq[i].file_name[x] = (char)('0' + (s + i) / 10);
        data->_data_seq[i].file_name[x+1] = (char)('0' + (s + i) % 10);
    }

    return LW_RET_OK;
}

LW_RESULT lwExpAnimDataMtlOpacity(lwAnimDataMtlOpacity* data, StdMat* mtl)
{
    LW_RESULT ret = LW_RET_FAILED;

    Control* ctrl = _GetAnimatableControlWithName(mtl, "Opacity");

    if(ctrl == 0)
        goto __ret;

    int tpf = GetTicksPerFrame();


    TimeValue t;

    lwKeyFloat* key_seq = 0;
    DWORD key_num = 0;

    key_num = ctrl->NumKeys();

    if(key_num == NOT_KEYFRAMEABLE || key_num == 0)
        goto __ret;

    key_seq = LW_NEW(lwKeyFloat[key_num]);

    for(DWORD i = 0; i < key_num; i++) 
    {
        t = ctrl->GetKeyTime(i);
        key_seq[i].slerp_type = AKST_LINEAR;
        key_seq[i].key = t / tpf;
        ctrl->GetValue(t, (void*)&key_seq[i].data, FOREVER);
    }

    lwAnimKeySetFloat* aksf = LW_NEW(lwAnimKeySetFloat);
    
    if(LW_FAILED(aksf->SetKeySequence(key_seq, key_num)))
        goto __ret;

    data->SetAnimKeySet(aksf);
    
    LW_SAFE_DELETE_A(key_seq);

    ret = LW_RET_OK;
__ret:
    return ret;

}

void GetBlendInfoBySkin(lwBlendInfo* blend_info, int* blend_num, ISkin* skin, ISkinContextData* skin_cd, int ver_id, INode* bone_node_seq[], int bone_node_num)
{
 
    memset(blend_info, 0, sizeof(lwBlendInfo));

    int blend_bone_num = skin_cd->GetNumAssignedBones(ver_id);

    assert(blend_bone_num > 0 && blend_bone_num <= LW_MAX_BLENDWEIGHT_NUM);

    int i, j;
    int bone_id;
    float sum_weight = 0.0f;

    INode* node;
    DWORD bone_node_id;
    
    for(i = 0; i < blend_bone_num; i++) {

        bone_id = skin_cd->GetAssignedBone(ver_id, i);
        // check removed bone
        assert(bone_id != -1);

        node = skin->GetBone(bone_id);
        assert(node);

        bone_node_id = GetNodeSeqID(node, bone_node_seq, bone_node_num);
        assert(bone_node_id != LW_INVALID_INDEX);

        blend_info->index[i] = (BYTE)bone_node_id;
        blend_info->weight[i] = skin_cd->GetBoneWeight(ver_id, i);

        sum_weight += blend_info->weight[i];
    }
    
    // sort blend_info
    float swap_weight;
    BYTE swap_index;

    for(i = 0; i < blend_bone_num - 1; i++)
    {
        for(j = i + 1; j < blend_bone_num; j++)
        {
            if(blend_info->weight[j] > blend_info->weight[i])
            {
                swap_weight = blend_info->weight[i];
                blend_info->weight[i] = blend_info->weight[j];
                blend_info->weight[j] = swap_weight;

                swap_index = blend_info->index[i];
                blend_info->index[i] = blend_info->index[j];
                blend_info->index[j] = swap_index;
            }
        }
    }
    
    if(lwFloatEqual(sum_weight, 1.0f, 1e-3f) == 0)
    {
        for(i = 0;i < blend_bone_num; i++)
        {
            blend_info->weight[i] /= sum_weight;
        }
        
    }

    // clear unused blend_info
    //for(i = blend_bone_num; i < LW_MAX_BLENDWEIGHT_NUM; i++)
    //{
    //    blend_info->index[i] = (BYTE)0xff;
    //    blend_info->weight[i] = 0.0f;
    //}

    *blend_num = blend_bone_num;

}

void GetBlendInfoByPhysique(lwBlendInfo* blend_info, int* blend_num, IPhyContextExport* phy_ce, int ver_id, INode* bone_node_seq[], int bone_node_num)
{
    memset(blend_info, 0, sizeof(lwBlendInfo));

    IPhyVertexExport *ve = phy_ce->GetVertexInterface(ver_id);
    assert(ve);

    INode* node;
    DWORD bone_base_id;

    int i, j;
    int blend_bone_num;
    float sum_weight;

    IPhyBlendedRigidVertex* brv;

    //switch(ve->GetVertexType())
    //{
    //case RIGID_BLENDED_TYPE:
    if(ve->GetVertexType() & BLENDED_TYPE)
    {
        brv = (IPhyBlendedRigidVertex*)ve;
        blend_bone_num = brv->GetNumberNodes();
        assert(blend_bone_num <= LW_MAX_BLENDWEIGHT_NUM);
        sum_weight = 0.0f;

        for(i = 0; i < blend_bone_num; i++)
        {
            node = brv->GetNode(i);

            bone_base_id = GetNodeSeqID(node, bone_node_seq, bone_node_num);
            assert(bone_base_id  != LW_INVALID_INDEX);

            blend_info->index[i]  = (BYTE)bone_base_id;			
            blend_info->weight[i] = brv->GetWeight(i);

            sum_weight += blend_info->weight[i];
        }

        
        if(lwFloatEqual(sum_weight, 1.0f, 1e-3f) == 0)
        {
            for(i = 0;i < blend_bone_num; i++)
            {
                blend_info->weight[i] /= sum_weight;
            }
        }
    }
    //    break;

    //case RIGID_TYPE:
    else {
        node = ((IPhyRigidVertex*)ve)->GetNode();
        bone_base_id = GetNodeSeqID(node, bone_node_seq, bone_node_num);
        if(bone_base_id  == LW_INVALID_INDEX)
            return;

        blend_info->index[0] = (BYTE)bone_base_id;
        blend_info->weight[0] = 1.0f;

        blend_bone_num = 1;

    //    break;

    //default:
    //    assert(0);
    }

    // sort blend_info
    float swap_weight;
    BYTE swap_index;

    for(i = 0; i < blend_bone_num - 1; i++)
    {
        for(j = i + 1; j < blend_bone_num; j++)
        {
            if(blend_info->weight[j] > blend_info->weight[i])
            {
                swap_weight = blend_info->weight[i];
                blend_info->weight[i] = blend_info->weight[j];
                blend_info->weight[j] = swap_weight;

                swap_index = blend_info->index[i];
                blend_info->index[i] = blend_info->index[j];
                blend_info->index[j] = swap_index;
            }
        }
    }

    //for(i = blend_bone_num; i < LW_MAX_BLENDWEIGHT_NUM; i++)
    //{
    //    blend_info->index[i] = (BYTE)0xff;
    //    blend_info->weight[i] = 0.0f;
    //}

    *blend_num = blend_bone_num;

}

Modifier* GetModifier(INode* node, Class_ID id)
{
    Object* obj = node->GetObjectRef();
    
    if((obj == NULL) || (obj->SuperClassID() != GEN_DERIVOB_CLASS_ID))
        return 0;

    IDerivedObject* der_obj = static_cast< IDerivedObject* >(obj);
    
    int mod_count = der_obj->NumModifiers();

    for(int i = 0; i < mod_count; i++) 
    {
        Modifier* mod = der_obj->GetModifier(i);

        if(mod->ClassID() == id) 
        {
            return mod;
        }
    }


    return 0;

}

Modifier* GetSkinModifier(INode* node)
{
    return GetModifier(node, SKIN_CLASSID);
}

Modifier* GetPhysiqueModifier(INode* node)
{
    return GetModifier(node, Class_ID(PHYSIQUE_CLASS_ID_A, PHYSIQUE_CLASS_ID_B));
}



int lwGetBoneDummyInfo(lwBoneDummyInfo* dummy_info, DWORD parent_id, const Matrix3* parent_mat_local, INode* dummy_node)
{    
    DWORD id = lwGetMaskIDWithName(MASK_HELPER_DUMMY, dummy_node->GetName());

    if(id < 0 || id >= LW_MAX_BONEDUMMY_NUM)
    {
        MessageBox(0, "invaild bone dummy name", "error", MB_OK);
        return 0;
    }

    dummy_info->id = id;
    dummy_info->parent_bone_id = parent_id;

    //Matrix3 mat3_global, mat3_local;

    //// init inverse matrix
    //lwGetNodeLocalTM(dummy_node, &mat3_local, 0);

    //FormM16(mat3_local, (float*)&dummy_info->mat_local);

    //mat3_local = mat3_local * (*parent_mat_local);
    //mat3_local = Inverse(mat3_local);
    //FormM16(mat3_local, (float*)&dummy_info->mat_inv);

    //// global matrix
    //mat3_global = dummy_node->GetNodeTM(0);
    //FormM16(mat3_global, (float*)&dummy_info->mat);
    
    //Matrix3 mat3_local;
    //lwGetNodeLocalTM(dummy_node, &mat3_local, 0);
    //FormM16(mat3_local, (float*)&dummy_info->mat);

    FormM16(dummy_node->GetNodeTM(0), (float*)&dummy_info->mat);

//#ifdef USE_LEFT_HAND_COORDINATE
    if(g_coord_type & LW_COORD_TYPE_LEFTHAND)
    {
        lwMatrix44MetathesisYZ(&dummy_info->mat, &dummy_info->mat);
    }
    
    if(g_coord_type & LW_COORD_TYPE_MINDPOWER)
    {
        lwMatrix44MetathesisMindPower(&dummy_info->mat, &dummy_info->mat);
    }

//#endif


    return 1;
}

// copied from MsnExport
lwVector3 lwGetVertexNormal(Mesh* pMesh, int faceId, int vertId)
{
	// get the "rendered" vertex
	RVertex *pRVertex = pMesh->getRVertPtr(vertId);

	Face* pFace = &pMesh->faces[faceId];
	DWORD smGroup = pFace->smGroup;
	int numNormals;
	Point3 vertexNormal;
	
    if(pRVertex)
    {
        // Is normal specified
        // SPCIFIED is not currently used, but may be used in future versions.
        if (pRVertex->rFlags & SPECIFIED_NORMAL) 
        {
            vertexNormal = pRVertex->rn.getNormal();
        }
        // If normal is not specified it's only available if the face belongs
        // to a smoothing group
        else if ((numNormals = pRVertex->rFlags & NORCT_MASK) && smGroup != 0) 
        {
            // If there is only one vertex is found in the rn member.
            if (numNormals == 1) 
            {
                vertexNormal = pRVertex->rn.getNormal();
            }
            else 
            {
                // If two or more vertices are there you need to step through them
                // and find the vertex with the same smoothing group as the current face.
                // You will find multiple normals in the ern member.
                for (int i = 0; i < numNormals; i++) 
                {
                    if (pRVertex->ern[i].getSmGroup() & smGroup) 
                    {
                        vertexNormal = pRVertex->ern[i].getNormal();
                        break;
                    }
                }
            }
        }
        else 
        {
            // Get the normal from the Face if no smoothing groups are there
            vertexNormal = pMesh->getFaceNormal(faceId);
        }
    }
    else
    {
        lwVector3 v[3];
        for(int i = 0; i < 3; i++)
        {
            Point3& p = pMesh->getVert(pFace->getVert(i));
            v[i].x = p.x;
            v[i].y = p.y;
            v[i].z = p.z;
        }

        lwGetTriangleNormal((lwVector3*)&vertexNormal, &v[0], &v[1], &v[2]);

		//vertexNormal = pMesh->getFaceNormal(faceId);
    }
	
	return lwVector3(vertexNormal.x, vertexNormal.y, vertexNormal.z);
}

LW_RESULT lwExportGeomObjInfo(lwGeomObjInfo* info, INode *node, Interface *io, DWORD mask)
{
    /////////////////////////
    Object* obj = node->EvalWorldState(0).obj;

    if(obj->CanConvertToType(triObjectClassID) == 0)
        return ERR_EXPOBJ_INVALID_TRIOBJECT;

    char* node_name = node->GetName();

	TriObject *tri = (TriObject*)obj->ConvertToType(0, triObjectClassID);

	int i, j, k;
    float tmp_f;

    lwMtlTexInfo mtl_buf[32];
    Mtl* mtl_seq[32];
    int mtl_num = 0;


	Mesh& mesh = tri->GetMesh();

    mesh.buildNormals();

    int face_num = mesh.numFaces;
    int max_vert_num = face_num * 3;
	int ver_num = 0;

    if(face_num <= 0)
    {
        MessageBox(NULL, "Invalid triangle object with 0 face num", "error", MB_OK);
        return ERR_EXPOBJ_INVALID_TRIOBJECT;
    }

	lwVector3 tmp_ver;
    lwVector3 tmp_nor;

	// begin export object data
    memset(mtl_seq, 0, sizeof(Mtl*) * 32);
    if(mask & EXP_MTLTEXINFO)
    {
        if(_DoExportMaterial(mtl_buf, mtl_seq, &mtl_num, node) == 0) 
        {
            return ERR_EXPOBJ_MATERIAL;        
        }
    }
    else // we insert default material to calculate other data
    {
        // no material, we insert an default material
        mtl_num = 1;
        _DoExpMtlData(&mtl_buf[0], 0);
    }

	//bTex - TRUE : use texture
	BOOL bTex = (&mesh.tvFace[0] == NULL) ? FALSE : TRUE;

	//bCV - TRUE : vertex color mode
	BOOL bCV = node->GetCVertMode();

	// check vertex color
	if(mesh.getNumVertCol() == 0 && bCV) 
    {
		//MessageBox(0,"Vertex Color Flag_on error ",0,MB_OK);
        assert(0 && "Vertex Color Flag_on error ");
		return ERR_EXPOBJ_VERTEXCOLOR;
	}
	
	// geometry ver_buf data
	lwVector3 *ver_buf	= LW_NEW(lwVector3[max_vert_num]);
    memset(ver_buf, 0, sizeof(lwVector3) * max_vert_num);
    // vert_id_buf
    int* ver_id_buf = LW_NEW(int[max_vert_num]);

    // normal buf data
    lwVector3* normal_buf = LW_NEW(lwVector3[max_vert_num]);
    memset(normal_buf, 0, sizeof(lwVector3) * max_vert_num);

	// texture tex_buf of geometry
    lwVector2 tmp_texuv(0.0f, 0.0f);
	lwVector2* texuv_buf = LW_NEW(lwVector2[max_vert_num]);
    memset(texuv_buf, 0, sizeof(lwVector2) * max_vert_num);

    // vertex color
    DWORD tmp_vercol = 0;
	DWORD* vercol_buf = NULL;		
	if (bCV)
		vercol_buf	= LW_NEW(DWORD[max_vert_num]);

	// topology data
	int	   *poly		= LW_NEW(int[face_num * 4]);

    // test
    if(bCV) 
    {
        MeshMap& alpha_map = mesh.Map(MAP_ALPHA);
        TVFace* f = mesh.mapFaces(MAP_ALPHA);
    }
    // end

    int attached_bone_num = 0;
    int blend_num = 0;
    lwBlendInfo* blend_info = 0;
    DWORD attached_bone_seq[LW_MAX_BONE_NUM];

    const int MAX_BONE_NUM = 256;
    lwBoneBaseInfo bone_seq[MAX_BONE_NUM];
    INode* bone_node_seq[MAX_BONE_NUM];
    int bone_node_num = 0;

	for(i = 0; i < face_num; i++) 
    {
		Face* faces = &mesh.faces[i];
		TVFace* tvFace = &mesh.tvFace[i];
		TVFace* vcFace = &mesh.vcFace[i];

		for(j = 0; j < 3; j++) 
        {
			// test for texture vertex index
			int v_id = faces->getVert(j);
			
			tmp_ver  = *(lwVector3*)&mesh.getVert(v_id);

            tmp_nor = lwGetVertexNormal(&mesh, i, v_id);

			if(bTex) {

				int t_id = tvFace->t[j];

				assert(t_id>=0 && t_id<mesh.numTVerts);

				tmp_texuv = *(lwVector2*)&mesh.getTVert(t_id);
			}

			//vertex color
			if(bCV) {

				int vc_id = vcFace->t[j];				
				assert(vc_id>=0 && vc_id<mesh.numCVerts);

                lwVector3* v = (lwVector3*)&mesh.vertCol[vc_id];
                tmp_vercol = (DWORD)((BYTE)(v->z * 255.0f) | ((BYTE)(v->y * 255.0f))<< 8 | ((BYTE)(v->x * 255.0f))<< 16 | 0xff000000);

			}

			// check the vertex is duplicated or not
			for(k = 0; k < ver_num; k++) 
            {

				if(!lwVector3Equal(&tmp_ver, &ver_buf[k]))
					continue;

                if(!lwVector3Equal(&tmp_nor, &normal_buf[k]))
                    continue;

				if(bTex)
                {
					if(!lwVec2Equal(&tmp_texuv, &texuv_buf[k]))
						continue;
                }

				if(bCV)
                {
					if(tmp_vercol != vercol_buf[k])
						continue;
                }

				break;
			}

			if(k >= ver_num)	
            {
				//vertex
				ver_buf[ver_num] = tmp_ver;

                // normal
                normal_buf[ver_num] = tmp_nor;

				//texture uv
				if(bTex)
                {
					texuv_buf[ver_num]= tmp_texuv;
                }

                //// debug
                //if(tmp_texuv.x > 1.0f || tmp_texuv.x < 0.0f || tmp_texuv.y > 1.0f || tmp_texuv.y < 0.0f)
                //{
                //    int xx = 0;
                //}
                //// end

				if(bCV)
                {
					vercol_buf[ver_num] = tmp_vercol;
                }

                // vert_id_buf
                ver_id_buf[ver_num] = v_id;

				ver_num ++;
			}

			poly[i * 4 + j + 1] = k;
		}
		

		//check material index
        if(mtl_num > 1) 
        {
            int mtl_id = mesh.getFaceMtlIndex(i);

            if(mtl_id >= mtl_num)
            {
                mtl_id = mtl_id % mtl_num;
            }
		    poly[i * 4] = mtl_id;
        }
        else 
        {
            poly[i * 4] = 0;
        }


	}

    int ii = 0;
    int ind_num = face_num * 3;
    DWORD* ind_buf = LW_NEW(DWORD[ind_num]);
    int subset_num = mtl_num;
    lwSubsetInfo* subset_buf = LW_NEW(lwSubsetInfo[subset_num]);
    memset(subset_buf, 0, sizeof(lwSubsetInfo) * subset_num);

    for(i = 0; i < subset_num; i++) 
    {
        for(j = 0; j < face_num; j++) 
        {
            if(poly[j * 4] == i) 
            {
                ind_buf[ii] = poly[j * 4 + 1];
                ind_buf[ii + 1] = poly[j * 4 + 2];
                ind_buf[ii + 2] = poly[j * 4 + 3];
                ii += 3;

                subset_buf[i].primitive_num += 1;
            }
        }
    }

    subset_buf[0].start_index = 0;
    for(i = 1; i < subset_num; i++)
    {
        subset_buf[i].start_index = subset_buf[i - 1].start_index + subset_buf[i - 1].primitive_num * 3;
    }

    BYTE* vert_mask_seq = LW_NEW(BYTE[ver_num]);

    lwSubsetInfo* s;
    
    for(i = 0; i < subset_num; i++)
    {
        s = &subset_buf[i];
        s->min_index = 0xffffffff;
        s->vertex_num = 0x00000000;

        memset(vert_mask_seq, 0, sizeof(BYTE) * ver_num);


        int subset_ind_num = s->start_index + s->primitive_num * 3;

        for(j = (int)s->start_index; j < subset_ind_num; j++)
        {
            vert_mask_seq[ind_buf[j]] = 1;

            if(s->min_index > ind_buf[j])
            {
                s->min_index = ind_buf[j];
            }
            if(s->vertex_num < ind_buf[j])
            {
                s->vertex_num = ind_buf[j];
            }
        }
        
        s->vertex_num -= s->min_index;
        s->vertex_num += 1;

        //s->vertex_num = 0;
        //for(j = 0; j < ver_num; j++)
        //{
        //    if(vert_mask_seq[j] == 1)
        //        s->vertex_num += 1;
        //}
    }

    LW_DELETE_A(vert_mask_seq);
    // end

    // set vertices normal
#if 0
    DWORD* ptr_ind;
	int* ver_ref = LW_NEW(int[ver_num]);
	lwVector3* ver_nor = LW_NEW(lwVector3[ver_num]);
    lwVector3 ver_n;

	memset(ver_ref, 0, sizeof(int) * ver_num);
	memset(ver_nor, 0, sizeof(lwVector3) * ver_num);

    j = ind_num / 3;
    for(i = 0; i < j; i++) 
    {
        ptr_ind = &ind_buf[3 * i];

		// reference count
		ver_ref[ptr_ind[0]] ++;
		ver_ref[ptr_ind[1]] ++;
		ver_ref[ptr_ind[2]] ++;

        lwGetTriangleNormal(&ver_n, &ver_buf[ptr_ind[0]], &ver_buf[ptr_ind[1]], &ver_buf[ptr_ind[2]]);

		// normal value
		ver_nor[ptr_ind[0]] += ver_n;
		ver_nor[ptr_ind[1]] += ver_n;
		ver_nor[ptr_ind[2]] += ver_n;
	}

	// normalize
    for(i = 0; i < ver_num; i++) 
    {
		// normalize vector normal
        tmp_f = 1.0f / ver_ref[i];
		ver_nor[i].x *= tmp_f;
		ver_nor[i].y *= tmp_f;
		ver_nor[i].z *= tmp_f;

		lwVector3Normalize(&ver_nor[i]);
	}

	LW_DELETE_A(ver_ref);
#endif


    // ok, now we discard unused material data
    int tmp_num = 0; 
    for(i = 0; i < subset_num; i++) 
    {
        if(subset_buf[i].primitive_num > 0)
            tmp_num += 1;
    }

    if(tmp_num != subset_num) 
    {

        lwSubsetInfo* tmp_subset = LW_NEW(lwSubsetInfo[tmp_num]);

        lwMtlTexInfo tmp_mtl[LW_MAX_SUBSET_NUM];
        Mtl* tmp_mtl_seq[LW_MAX_SUBSET_NUM];
        memcpy(tmp_mtl, mtl_buf, sizeof(lwMtlTexInfo) * mtl_num);

        tmp_num = 0;
        for(i = 0; i < subset_num; i++) 
        {
            if(subset_buf[i].primitive_num > 0) 
            {
                tmp_subset[tmp_num] = subset_buf[i];
                memcpy(&tmp_mtl[tmp_num], &mtl_buf[i], sizeof(lwMtlTexInfo));
                tmp_mtl_seq[tmp_num] = mtl_seq[i];
                tmp_num += 1;
            }
        }

        LW_DELETE_A(subset_buf);
        subset_buf = tmp_subset;
        subset_num = tmp_num;
        memcpy(mtl_buf, tmp_mtl, sizeof(lwMtlTexInfo) * tmp_num);
        memcpy(mtl_seq, tmp_mtl_seq, sizeof(Mtl*) * tmp_num);
        mtl_num = tmp_num;
    }
    //


    // begin check skin object and get skin mesh data    
    if(mask & EXP_BLENDINFO)
    {
        Modifier* mod_skin = 0;
        Modifier* mod_phy = 0;

        if(mod_skin = GetSkinModifier(node))
        {
            lwEnumBoneBaseInfoBySkin(bone_seq, &bone_node_num, MAX_BONE_NUM, bone_node_seq, node);
        }
        else if(mod_phy = GetPhysiqueModifier(node))
        {
            lwEnumBoneBaseInfoByPhysique(bone_seq, &bone_node_num, MAX_BONE_NUM, bone_node_seq, node);
        }

        if(mod_skin || mod_phy)
        {

            ISkin* skin;
            ISkinContextData* skin_cd;
            IPhysiqueExport* phy;
            IPhyContextExport* phy_ce;

            if(mod_skin)
            {
                skin = (ISkin*)mod_skin->GetInterface(I_SKIN);
                skin_cd = skin->GetContextInterface(node);
            }
            else if(mod_phy)
            {
                phy = (IPhysiqueExport*)mod_phy->GetInterface(I_PHYINTERFACE);
                phy_ce = (IPhyContextExport*)phy->GetContextInterface(node);
            }

            //
            // export bone weight
            int i, j, k;
            blend_info = LW_NEW(lwBlendInfo[ver_num]);

            int cur_blend_num = 0;

            for(i = 0; i < ver_num; i++)
            {
                if(mod_skin)
                {
                    GetBlendInfoBySkin(&blend_info[i] , &cur_blend_num, skin, skin_cd, ver_id_buf[i], bone_node_seq, bone_node_num);
                }
                else
                {
                    GetBlendInfoByPhysique(&blend_info[i] , &cur_blend_num, phy_ce, ver_id_buf[i], bone_node_seq, bone_node_num);
                }

                if(blend_num < cur_blend_num)
                {
                    blend_num = cur_blend_num;
                }
            }

            // swizzle bone index seq
            BYTE* ind;
            for(i = 0; i < ver_num; i++)
            {
                for(j = 0; j < blend_num; j++)
                {
                    ind = &blend_info[i].index[j];

                    for(k = 0; k < attached_bone_num; k++)
                    {
                        if(attached_bone_seq[k] == *ind)
                        {
                            *ind = k;
                            break;
                        }
                    }

                    if(k == attached_bone_num)
                    {
                        if(attached_bone_num >= LW_MAX_BONE_NUM)
                        {
                            MessageBox(NULL, "number of blended bones is more than LW_MAX_BONE_NUM", "error", MB_OK);
                            return LW_RET_FAILED;
                        }

                        attached_bone_seq[attached_bone_num] = *ind;
                        *ind = attached_bone_num;
                        attached_bone_num += 1;
                    }
                }
            }

            // end

            // bone_skin object use global vertices data
            lwMatrix44 mat44;
            FormM16(node->GetObjectTM(0), &mat44._11);
            //Matrix3 mat43;
            //lwGetNodeLocalTM(node, &mat43, 0);
            //FormM16(mat43, (float*)&mat44);
            for(i = 0; i < ver_num; i++) 
            {
                lwVec3Mat44Mul(&ver_buf[i], &mat44);
                lwVec3Mat44MulNormal(&normal_buf[i], &mat44);
                lwVector3Normalize(&normal_buf[i]);
            }


        }
    }
    // end

//#ifdef USE_LEFT_HAND_COORDINATE
    if(g_coord_type & LW_COORD_TYPE_LEFTHAND)
    {
    lwVector3* v;
    int tmp_i;
    
	// convert vertices
	for(i = 0; i < ver_num; i++) 
    {

		v = &ver_buf[i];

		tmp_f = v->y;
		v->y = v->z;
		v->z = tmp_f;

        // convert normal 
        if(normal_buf)
        {
            v = &normal_buf[i];
            tmp_f = v->y;
            v->y = v->z;
            v->z = tmp_f;
        }
#if 0
        if(ver_nor)
        {
            v = &ver_nor[i];
            tmp_f = v->y;
            v->y = v->z;
            v->z = tmp_f;
        }
#endif

		// convert texture
        texuv_buf[i].y = 1.0f - texuv_buf[i].y;

	}

    // convert topology vertices index
    DWORD* ptr_i;

    j = ind_num / 3;
    for(i = 0; i < j; i++) 
    {
        ptr_i = &ind_buf[3 * i];
        tmp_i = ptr_i[1];
        ptr_i[1] = ptr_i[2];
        ptr_i[2] = tmp_i;
    }

    }
//#endif
    if(g_coord_type & LW_COORD_TYPE_MINDPOWER)
    {
        // x---> x
        // y---> z
        // z---> -y

        float tmp_ctm;

        for(i = 0; i < ver_num; i++)
        {
            tmp_ctm = ver_buf[i].y;
            ver_buf[i].y = - ver_buf[i].z;
            ver_buf[i].z = tmp_ctm;

            if(normal_buf)
            {
                tmp_ctm = normal_buf[i].y;
                normal_buf[i].y = - normal_buf[i].z;
                normal_buf[i].z = tmp_ctm;
            }

#if 0
            if(ver_nor)
            {
                tmp_ctm = ver_nor[i].y;
                ver_nor[i].y = - ver_nor[i].z;
                ver_nor[i].z = tmp_ctm;
            }
#endif
        }
    }

	// fill lwGeomObjInfo data
    info->id = lwGetMaskIDWithName(MASK_OBJ, node_name);

    if(node->GetParentNode() != io->GetRootNode())
    {
        INode* parent_node = node->GetParentNode();

        info->parent_id = lwGetMaskIDWithName(MASK_OBJ, parent_node->GetName());
        
    }
    else
    {
        info->parent_id = LW_INVALID_INDEX;
    }

    // local matrix
    if(blend_info == 0)
    {
        Matrix3 m3;
        lwGetNodeLocalTM(node, &m3, 0);
        FormM16(m3, (float*)&info->mat_local._11);

        if(g_coord_type & LW_COORD_TYPE_LEFTHAND)
        {
            lwMatrix44MetathesisYZ((lwMatrix44*)&info->mat_local, (lwMatrix44*)&info->mat_local);
        }
        if(g_coord_type & LW_COORD_TYPE_MINDPOWER)
        {
            lwMatrix44MetathesisMindPower((lwMatrix44*)&info->mat_local, (lwMatrix44*)&info->mat_local);
        }
    }
    else
    {
        lwMatrix44Identity(&info->mat_local);
    }

    // mtl data
    info->mtl_seq = LW_NEW(lwMtlTexInfo[mtl_num]);
    memcpy(info->mtl_seq, mtl_buf, sizeof(lwMtlTexInfo) * mtl_num);
    info->mtl_num = mtl_num;

    // mesh data
    lwMeshInfo* m = &info->mesh;
    m->vertex_num = ver_num;
    m->index_num = ind_num;
    m->subset_num = subset_num;
    m->bone_index_num = attached_bone_num;
    m->bone_infl_factor = blend_num;

    m->vertex_seq = ver_buf;
    //m->normal_seq = ver_nor;
    m->normal_seq = normal_buf;
    m->vercol_seq = vercol_buf;
    m->texcoord0_seq = texuv_buf;
    m->index_seq = ind_buf;
    m->blend_seq = blend_info;

    m->subset_seq = LW_NEW(lwSubsetInfo[m->subset_num]);
    memcpy(m->subset_seq, subset_buf, sizeof(lwSubsetInfo) * m->subset_num);
    m->bone_index_seq = LW_NEW(DWORD[m->bone_index_num]);
    memcpy(m->bone_index_seq, attached_bone_seq, sizeof(DWORD) * m->bone_index_num);


    switch(blend_num)
    {
    case 0:
        m->fvf = D3DFVF_XYZ;
        break;
    case 1:
        m->fvf = (D3DFVF_XYZ | D3DFVF_LASTBETA_UBYTE4);
        break;
    case 2:
        m->fvf = (D3DFVF_XYZB2 | D3DFVF_LASTBETA_UBYTE4);
        break;
    case 3:
        m->fvf = (D3DFVF_XYZB3 | D3DFVF_LASTBETA_UBYTE4);
        break;
    case 4:
        m->fvf = (D3DFVF_XYZB4 | D3DFVF_LASTBETA_UBYTE4);
        break;
    default:
        assert(0);
    }


    if(m->texcoord0_seq)
    {
        m->fvf |= D3DFVF_TEX1;
    }
    if(m->vercol_seq)
    {
        m->fvf |= D3DFVF_DIFFUSE;
    }
    if(m->normal_seq)
    {
        m->fvf |= D3DFVF_NORMAL;
    }

    m->pt_type = D3DPT_TRIANGLELIST;

    if(m->fvf & D3DFVF_DIFFUSE)
    {
        RSA_VALUE(&m->rs_set[0], D3DRS_COLORVERTEX, TRUE);
    }

    // check geometry object type
    //if(LW_SUCCEEDED(lwCheckMaskNameToken('c', node_name)))
    //{        
    //    int t;
    //    lwGetMaskNameTokenParamI(&t, 'c', node_name);
    //    if(t == 1)
    //    {
    //        info->type = GEOMOBJ_TYPE_CHECK_BB;
    //    }
    //    else if(t == 2)
    //    {
    //        info->type = GEOMOBJ_TYPE_CHECK_BB2;
    //    }
    //    else
    //    {
    //        MessageBox(NULL, "invalid param called lwGetMaskNameTokenParamI with 'c'", "error", MB_OK);
    //    }
    //}

    //===============================================================
    // get animation data
    if(mask & EXP_ANIMDATA)
    {
        lwAnimDataInfo* adi = &info->anim_data;

        // bone
        if(mask & EXP_ANIMDATA_BONE)
        {
            if(bone_node_num > 0)
            {
                lwAnimDataBone* bone_data = LW_NEW(lwAnimDataBone);
                if(LW_SUCCEEDED(lwExpAnimDataBone(bone_data, bone_seq, bone_node_num, bone_node_seq, io)))
                {
                    adi->anim_bone = bone_data;
                }
                else
                {
                    LW_DELETE(bone_data);
                }
            }
        }

        if(mask & EXP_ANIMDATA_MATRIX)
        {
            // matrix
#ifdef USE_ANIMKEY_PRS

            lwAnimKeySetPRS* mat_data = LW_NEW(lwAnimKeySetPRS);
            if(LW_SUCCEEDED(lwExpAnimKeySetPRS(mat_data, node)))
            {
                adi->anim_mat = mat_data;
            }
            else
            {
                LW_DELETE(mat_data);
            }
#else
            lwAnimDataMatrix* mat_data = LW_NEW(lwAnimDataMatrix);
            if(LW_SUCCEEDED(lwExpAnimDataMatrix(mat_data, node)))
            {
                adi->anim_mat = mat_data;
            }      
            else
            {
                LW_DELETE(mat_data);
            }
#endif
        }

        if(mask & EXP_ANIMDATA_MTLOPACITY)
        {
            // search all StdMtl
            for(i = 0; i < (int)info->mtl_num; i++)
            {
                if(mtl_seq[i] == 0)
                    break;

                lwAnimDataMtlOpacity* mtlopac = LW_NEW(lwAnimDataMtlOpacity);

                if(LW_SUCCEEDED(lwExpAnimDataMtlOpacity(mtlopac, (StdMat*)mtl_seq[i])))
                {
                    adi->anim_mtlopac[i] = mtlopac;
                }
                else
                {
                    LW_DELETE(mtlopac);
                }
            }
        }

        if(mask & EXP_ANIMDATA_TEXUV)
        {
            // texture
            Texmap* tex;
            // search all texmap of material
            for(i = 0; i < (int)info->mtl_num; i++)
            {
                if(mtl_seq[i] == 0)
                    break;

                tex = mtl_seq[i]->GetSubTexmap(ID_DI);
                if(tex == 0)
                    continue;

                lwAnimDataTexUV* texuv_data = LW_NEW(lwAnimDataTexUV);

                if(LW_SUCCEEDED(lwExpAnimDataTexUV(texuv_data, tex)))
                {
                    adi->anim_tex[i][0] = texuv_data;
                }
                else
                {
                    LW_DELETE(texuv_data);
                }
            }
        }

        if(mask & EXP_ANIMDATA_TEXIMG)
        {
            // texture image            
            // search all mtl
            for(i = 0; i < (int)info->mtl_num; i++)
            {
                if(mtl_seq[i] == 0)
                    break;

                Texmap* tex = mtl_seq[i]->GetSubTexmap(ID_DI);
                if(tex == NULL)
                    continue;

                char* mtl_name = tex->GetName();
                int img_num;

                if(LW_SUCCEEDED(lwCheckMaskNameToken('i', mtl_name)))
                {

                    if(LW_SUCCEEDED(lwGetMaskNameTokenParamI(&img_num, 'i', mtl_name)))
                    {
                        lwAnimDataTexImg* teximg_data = LW_NEW(lwAnimDataTexImg);

                        if(LW_SUCCEEDED(lwExpAnimDataTexImg(teximg_data, &info->mtl_seq[i].tex_seq[0], img_num)))
                        {
                            adi->anim_img[i][0] = teximg_data;
                        }
                        else
                        {
                            LW_DELETE(teximg_data);
                        }
                    }
                }
            }
        }

        // image

        //
    }

    // begin enmulate child objects
    INode* child_node;
    int child_node_num = node->NumberOfChildren();
    Object* child_obj;
    char* child_name;

    // helper object
    lwHelperInfo* hi = &info->helper_data;

#define EXP_HELPER_DUMMY_METHOD

#if(defined EXP_HELPER_DUMMY_METHOD)
    if(LW_FAILED(lwExpGeomObjHelperDummy(node, &info->helper_data)))
    {
        CALL_JACK_MSGBOX();   
    }
#endif

#if(!defined EXP_HELPER_DUMMY_METHOD)
    hi->dummy_seq = LW_NEW(lwHelperDummyInfo[LW_MAX_OBJ_DUMMY_NUM]);
    hi->dummy_num = 0;
#endif

    hi->mesh_seq = LW_NEW(lwHelperMeshInfo[LW_MAX_HELPER_MESH_NUM]);
    hi->box_seq = LW_NEW(lwHelperBoxInfo[LW_MAX_HELPER_BOX_NUM]);
    hi->mesh_num = 0;
    hi->box_num = 0;

    hi->bbox_seq = LW_NEW(lwBoundingBoxInfo[LW_MAX_BOUNDING_BOX_NUM]);
    hi->bsphere_seq = LW_NEW(lwBoundingSphereInfo[LW_MAX_BOUNDING_SPHERE_NUM]);
    hi->bbox_num = 0;
    hi->bsphere_num = 0;

    for(int j = 0; j < child_node_num; j++)
    {
        child_node = node->GetChildNode(j);

        if(child_node->IsHidden())
            continue;

        child_name = child_node->GetName();
        child_obj = child_node->EvalWorldState(0).obj;
        
        
        if(mask & EXP_HELPERINFO) 
        {
            
#if(!defined EXP_HELPER_DUMMY_METHOD)
            // helper dummy
            if(LW_SUCCEEDED(lwCheckMaskName(MASK_HELPER_DUMMY, child_name))
                && child_obj->ClassID() == Class_ID(DUMMY_CLASS_ID , 0))
            {
                if(hi->dummy_num < LW_MAX_OBJ_DUMMY_NUM)
                {
                    lwExpDummyObject(&hi->dummy_seq[hi->dummy_num++], child_node);
                    hi->type |= HELPER_TYPE_DUMMY;
                }
                else
                {
                    MessageBox(NULL, "object dummy num is full", "error", MB_OK);
                }
            }
#endif
            if(LW_SUCCEEDED(lwCheckMaskName(MASK_HELPER_MESH, child_name))
                && child_obj->CanConvertToType(triObjectClassID))
            {
                lwGeomObjInfo helper_info;

                if(hi->mesh_num < LW_MAX_HELPER_MESH_NUM)
                {
                    if(LW_FAILED(lwExportGeomObjInfo(&helper_info, child_node, io, EXP_MASK_DEFAULT)))
                        return ERR_EXPOBJ_HELPERMESH;

                    lwHelperMeshInfo* hmi = &hi->mesh_seq[hi->mesh_num];

                    if(LW_FAILED(lwCreateHelperMeshInfo(hmi, &helper_info.mesh)))
                        return ERR_EXPOBJ_HELPERMESH;

                    hmi->id = lwGetMaskIDWithName(MASK_HELPER_MESH, child_name);
                    lwGetMaskNameWithName(hmi->name, child_name);
                    lwGetMaskNameTokenParamI((int*)&hmi->type, 't', child_name);
                    lwGetMaskNameTokenParamI((int*)&hmi->sub_type, 's', child_name);
                    hmi->mat = helper_info.mat_local;

                    hi->mesh_num += 1;
                    hi->type |= HELPER_TYPE_MESH;
                }
                else
                {
                    MessageBox(NULL, "helper mesh num is full", "error", MB_OK);
                }
            }
            else if(LW_SUCCEEDED(lwCheckMaskName(MASK_HELPER_BOX, child_name))
                && child_obj->ClassID() == Class_ID(BOXOBJ_CLASS_ID , 0))
            {
                if(hi->box_num < LW_MAX_HELPER_BOX_NUM)
                {
                    lwExpHelperBox(&hi->box_seq[hi->box_num++], child_node);
                    hi->type |= HELPER_TYPE_BOX;
                }
                else
                {
                    MessageBox(NULL, "helper box num is full", "error", MB_OK);
                }
            }
            // bounding object
            else if(LW_SUCCEEDED(lwCheckMaskName(MASK_BOUNDING_BOX, child_name))
                && child_obj->ClassID() == Class_ID(BOXOBJ_CLASS_ID , 0))
            {                
                if(hi->bbox_num < LW_MAX_BOUNDING_BOX_NUM)
                {
                    lwExpBoundingBox(&hi->bbox_seq[hi->bbox_num++], child_node);
                    hi->type |= HELPER_TYPE_BOUNDINGBOX;
                }
                else
                {
                    MessageBox(NULL, "bounding box num is full", "error", MB_OK);
                }
            }
            // bounding sphere
            else if(LW_SUCCEEDED(lwCheckMaskName(MASK_BOUNDING_SPHERE, child_name))
                && child_obj->ClassID() == Class_ID(SPHERE_CLASS_ID , 0))
            {                
                if(hi->bsphere_num < LW_MAX_BOUNDING_SPHERE_NUM)
                {
                    lwExpBoundingSphere(&hi->bsphere_seq[hi->bsphere_num++], child_node);
                    hi->type |= HELPER_TYPE_BOUNDINGSPHERE;
                }
                else
                {
                    MessageBox(NULL, "bounding sphere num is full", "error", MB_OK);
                }

            }
        } 


    }

    
#if(!defined EXP_HELPER_DUMMY_METHOD)
    if(hi->dummy_num == 0)
    {
        LW_SAFE_DELETE_A(hi->dummy_seq);
    }
#endif

#undef EXP_HELPER_DUMMY_METHOD

    if(hi->mesh_num == 0)
    {
        LW_SAFE_DELETE_A(hi->mesh_seq);
    }

    if(hi->box_num == 0)
    {
        LW_SAFE_DELETE_A(hi->box_seq);
    }
    if(hi->bbox_num == 0)
    {
        LW_SAFE_DELETE_A(hi->bbox_seq);
    }
    if(hi->bsphere_num == 0)
    {
        LW_SAFE_DELETE_A(hi->bsphere_seq);
    }

    // set default bounding box  / sphere
    if(mask & EXP_DEFAULTBOUNDINGBOX)
    {
        if(hi->bbox_num == 0 && hi->bsphere_num == 0)
        {
            if(info->mesh.bone_infl_factor > 0)
            {
                hi->bsphere_num = 1;
                hi->bsphere_seq = LW_NEW(lwBoundingSphereInfo[1]);
                hi->type |= HELPER_TYPE_BOUNDINGSPHERE;
            }
            else
            {
                hi->bbox_num = 1;
                hi->bbox_seq = LW_NEW(lwBoundingBoxInfo[1]);
                hi->type |= HELPER_TYPE_BOUNDINGBOX;

                //lwExpBoundingBox(&hi->bbox_seq[0], node);
                //lwMatrix44Identity(&hi->bbox_seq[0].mat);
                ////if(g_coord_type & LW_COORD_TYPE_LEFTHAND)
                ////{
                ////    lwMatrix44MetathesisYZ(&hi->bbox_seq[0].mat, &hi->bbox_seq[0].mat);                
                ////}
                ////if(g_coord_type & LW_COORD_TYPE_MINDPOWER)
                ////{
                ////    lwMatrix44MetathesisMindPower(&hi->bbox_seq[0].mat, &hi->bbox_seq[0].mat);
                ////}

                //hi->bbox_seq[0].id = 0;
            }

            lwExpDefaultBoundingObject(&hi->bbox_seq[0], &hi->bsphere_seq[0], node);
        }
    }
    // end

    // end

    // set lwRenderCtrlCreateInfo
    switch(m->bone_infl_factor)
    {
    case 0:
        info->rcci.ctrl_id = RENDERCTRL_VS_FIXEDFUNCTION;
        break;
    case 1:
        info->rcci.ctrl_id = RENDERCTRL_VS_VERTEXBLEND;
        info->rcci.vs_id = VST_PU4NT0_LD;
        break;
    case 2:
        info->rcci.ctrl_id = RENDERCTRL_VS_VERTEXBLEND;
        info->rcci.vs_id = VST_PB1U4NT0_LD;
        break;
    case 3:
        info->rcci.ctrl_id = RENDERCTRL_VS_VERTEXBLEND;
        info->rcci.vs_id = VST_PB2U4NT0_LD;
        break;
    case 4:
        info->rcci.ctrl_id = RENDERCTRL_VS_VERTEXBLEND;
        info->rcci.vs_id = VST_PB3U4NT0_LD;
        break;
    default:
        assert(0);
    }

    for(DWORD i = 0; i < LW_MAX_SUBSET_NUM; i++)
    {
        if(info->anim_data.anim_tex[i][0])
        {
            //info->rcci.ctrl_id = RENDERCTRL_VSBONE;
            break;
        }
    }

    switch(info->mesh.fvf)
    {
    case FVF_XYZDIFFUSE:
        info->rcci.decl_id = VDT_PD;
        break;
    case FVF_XYZNORMALTEX1:
        info->rcci.decl_id = VDT_PNT0;
        break;
    case FVF_XYZDIFFUSETEX1:
        info->rcci.decl_id = VDT_PDT0;
        break;
    case FVF_XYZNORMALDIFFUSETEX1:
        info->rcci.decl_id = VDT_PNDT0;
        break;
    case FVF_XYZNORMALDIFFUSETEX2:
        info->rcci.decl_id = VDT_PNDT1;
        break;
    case FVF_XYZUBYTE4NORMALTEX1:
        info->rcci.decl_id = VDT_PU4NT0;
        break;
    case FVF_XYZB2UBYTE4NORMALTEX1:
        info->rcci.decl_id = VDT_PB1U4NT0;
        break;
    case FVF_XYZB3UBYTE4NORMALTEX1:
        info->rcci.decl_id = VDT_PB2U4NT0;
        break;
    case FVF_XYZB4UBYTE4NORMALTEX1:
        info->rcci.decl_id = VDT_PB3U4NT0;
        break;
    default:
        MessageBox(NULL, "invalid fvf", "error", MB_OK);
    }
    // end

    // vertex declaration
    {
        //typedef struct _D3DVERTEXELEMENT9
        //{
        //    WORD    Stream;     // Stream index
        //    WORD    Offset;     // Offset in the stream in bytes
        //    BYTE    Type;       // Data type
        //    BYTE    Method;     // Processing method
        //    BYTE    Usage;      // Semantics
        //    BYTE    UsageIndex; // Semantic index
        //} D3DVERTEXELEMENT9, *LPD3DVERTEXELEMENT9;

        D3DVERTEXELEMENTX vert_decl[32];
        D3DVERTEXELEMENTX* ve;
        DWORD ve_num = 0;
        WORD this_offset = 0;

        if(m->vertex_seq)
        {
            ve = &vert_decl[ve_num];
            ve->Stream = 0;
            ve->Offset = this_offset;
            ve->Type = D3DDECLTYPE_FLOAT3;
            ve->Method = D3DDECLMETHOD_DEFAULT;
            ve->Usage = D3DDECLUSAGE_POSITION;
            ve->UsageIndex = 0;

            ve_num += 1;
            this_offset += sizeof(lwVector3);
        }
        if(m->blend_seq)
        {
            ve = &vert_decl[ve_num];
            ve->Stream = 0;
            ve->Offset = this_offset;
            ve->Type = D3DDECLTYPE_FLOAT4;
            ve->Method = D3DDECLMETHOD_DEFAULT;
            ve->Usage = D3DDECLUSAGE_BLENDWEIGHT;
            ve->UsageIndex = 0;

            ve_num += 1;
            this_offset += sizeof(lwVector4);

            ve = &vert_decl[ve_num];
            ve->Stream = 0;
            ve->Offset = this_offset;
            ve->Type = D3DDECLTYPE_D3DCOLOR;
            ve->Method = D3DDECLMETHOD_DEFAULT;
            ve->Usage = D3DDECLUSAGE_BLENDINDICES;
            ve->UsageIndex = 0;

            ve_num += 1;
            this_offset += sizeof(DWORD);
        }
        if(m->normal_seq)
        {
            ve = &vert_decl[ve_num];
            ve->Stream = 0;
            ve->Offset = this_offset;
            ve->Type = D3DDECLTYPE_FLOAT3;
            ve->Method = D3DDECLMETHOD_DEFAULT;
            ve->Usage = D3DDECLUSAGE_NORMAL;
            ve->UsageIndex = 0;

            ve_num += 1;
            this_offset += sizeof(lwVector3);
        }
        if(m->texcoord0_seq)
        {
            ve = &vert_decl[ve_num];
            ve->Stream = 0;
            ve->Offset = this_offset;
            ve->Type = D3DDECLTYPE_FLOAT2;
            ve->Method = D3DDECLMETHOD_DEFAULT;
            ve->Usage = D3DDECLUSAGE_TEXCOORD;
            ve->UsageIndex = 0;

            ve_num += 1;
            this_offset += sizeof(lwVector2);
        }
        if(m->vercol_seq)
        {
            ve = &vert_decl[ve_num];
            ve->Stream = 0;
            ve->Offset = this_offset;
            ve->Type = D3DDECLTYPE_D3DCOLOR;
            ve->Method = D3DDECLMETHOD_DEFAULT;
            ve->Usage = D3DDECLUSAGE_COLOR;
            ve->UsageIndex = 0;

            ve_num += 1;
            this_offset += sizeof(DWORD);

        }

        // VE_END
        ve = &vert_decl[ve_num];
        ve->Stream = 0xff;
        ve->Offset = 0;
        ve->Type = 0;
        ve->Method = 0;
        ve->Usage = 0;
        ve->UsageIndex = 0;

        ve_num += 1;

        // fill it
        m->vertex_element_num = ve_num;
        m->vertex_element_seq = LW_NEW(D3DVERTEXELEMENTX[m->vertex_element_num]);
        memcpy(m->vertex_element_seq, vert_decl, sizeof(D3DVERTEXELEMENTX) * m->vertex_element_num);
    }
    // end

    // check transparent state
    //for(int i = 0; i < mtl_num; i++)
    //{
    //    if(mtl_seq[i] == 0)
    //        continue;

    //    if(((StdMat*)mtl_seq[i])->GetTransparencyType() == TRANSP_FILTER)
    //        continue;

    //    //switch(type)
    //    //{
    //    //case TRANSP_SUBTRACTIVE:
    //    //case TRANSP_ADDITIVE:
    //    //    break;
    //    //default:
    //    //    continue;
    //    //}

    //    info->state_ctrl.SetState(STATE_TRANSPARENT, 1);
    //    break;
    //}

    // check transparency type
    for(DWORD i = 0; i < info->mtl_num; i++)
    {
        DWORD fmt = info->mtl_seq[i].tex_seq[0].format;
        if(fmt == D3DFMT_A4R4G4B4
            || fmt == D3DFMT_A1R5G5B5
            || fmt == D3DFMT_A2B10G10R10
            || fmt == D3DFMT_A8R8G8B8)
        {
            goto __addr_set_transp;
        }

        if(info->mtl_seq[i].transp_type != MTLTEX_TRANSP_FILTER)
            goto __addr_set_transp;

        if(info->mtl_seq[i].opacity < 1.0f)
            goto __addr_set_transp;

        continue;

__addr_set_transp:
        info->state_ctrl.SetState(STATE_TRANSPARENT, 1);
        break;
    }
    // end

    // summarize data size
    info->mtl_size = lwGetMtlTexInfoSize(&info->mtl_seq[0], info->mtl_num);
    info->mesh_size = lwMeshInfo_GetDataSize(&info->mesh);
    info->anim_size = info->anim_data.GetDataSize();
    info->helper_size = info->helper_data.GetDataSize();

    ver_buf = 0;
    texuv_buf = 0;
    vercol_buf = 0;
    ind_buf = 0;
    subset_buf = 0;

    LW_DELETE_A(poly);
    LW_SAFE_DELETE_A(ver_id_buf);

    return LW_RET_OK;

}

// 这里暂定组合物件只能有一张贴图
// 这里暂定组合物件没有BoneInfo
LW_RESULT lwMergeGeomObjInfo(lwGeomObjInfo* ret_info, const lwGeomObjInfo* obj_seq, DWORD obj_num)
{
    const lwGeomObjInfo* obj_0 = &obj_seq[0];

    lwMeshInfo* m = &ret_info->mesh;
    const lwMeshInfo* n = &obj_0->mesh;
    
    // merge mesh info
    m->fvf = n->fvf;
    m->pt_type = n->pt_type;
    m->subset_num = n->subset_num;

    for(DWORD i = 0; i < obj_num; i++)
    {
        n = &obj_seq[i].mesh;

        m->vertex_num += n->vertex_num;
        m->index_num += n->index_num;
        m->bone_index_num += n->bone_index_num;
        m->subset_seq[0].primitive_num += n->subset_seq[0].primitive_num;
    }
    m->subset_seq[0].min_index = 0;
    m->subset_seq[0].start_index = 0;
    m->subset_seq[0].vertex_num = m->vertex_num;

    m->vertex_seq = LW_NEW(lwVector3[m->vertex_num]);

    if(m->index_num > 0)
    {
        m->index_seq = LW_NEW(DWORD[m->index_num]);
    }

    if(m->fvf & D3DFVF_NORMAL)
    {
        m->normal_seq = LW_NEW(lwVector3[m->vertex_num]);
    }

    if(m->fvf & D3DFVF_DIFFUSE)
    {
        m->vercol_seq = LW_NEW(DWORD[m->vertex_num]);
    }

    if(m->fvf & D3DFVF_TEX1)
    {
        m->texcoord0_seq = LW_NEW(lwVector2[m->vertex_num]);
    }

    if(m->fvf & D3DFVF_LASTBETA_UBYTE4)
    {
        m->blend_seq = LW_NEW(lwBlendInfo[m->vertex_num]);
    }

    DWORD pv = 0;
    DWORD pi = 0;

    for(DWORD i = 0; i < obj_num; i++)
    {
        n = &obj_seq[i].mesh;

        for(DWORD j = 0; j < n->vertex_num; j++)
        {
            m->vertex_seq[pv + j] = n->vertex_seq[j];
            lwVec3Mat44Mul(&m->vertex_seq[pv + j], (lwMatrix44*)&obj_seq[i].mat_local);
        }

        if(m->index_num > 0)
        {
            for(DWORD j = 0; j < n->index_num; j++)
            {
                m->index_seq[pi + j] = n->index_seq[j] + pv;
            }
        }

        if(m->fvf & D3DFVF_NORMAL)
        {
            memcpy(&m->normal_seq[pv], &n->normal_seq[0], sizeof(lwVector3) * n->vertex_num);
        }

        if(m->fvf & D3DFVF_DIFFUSE)
        {
            memcpy(&m->vercol_seq[pv], &n->vercol_seq[0], sizeof(DWORD) * n->vertex_num);
        }

        if(m->fvf & D3DFVF_TEX1)
        {
            memcpy(&m->texcoord0_seq[pv], &n->texcoord0_seq[0], sizeof(lwVector2) * n->vertex_num);
        }

        if(m->fvf & D3DFVF_LASTBETA_UBYTE4)
        {
            memcpy(&m->blend_seq[pv], &n->blend_seq[0], sizeof(lwBlendInfo) * n->vertex_num);
        }

        pv += n->vertex_num;
        pi += n->index_num;
    }

    // base info
    ret_info->id = obj_0->id;
    ret_info->parent_id = obj_0->parent_id;
    ret_info->mtl_num = obj_0->mtl_num;
    ret_info->mat_local = obj_0->mat_local;
    memcpy(&ret_info->mtl_seq[0], &obj_0->mtl_seq[0], sizeof(lwMtlTexInfo) * ret_info->mtl_num);

    ret_info->mtl_size = obj_0->mtl_size;
    ret_info->mesh_size = lwMeshInfo_GetDataSize(&ret_info->mesh);
    ret_info->helper_size = obj_0->helper_size;
    ret_info->anim_size = obj_0->anim_size;

    if(ret_info->helper_size > 0)
    {
        ret_info->helper_data.Copy(&obj_0->helper_data);
    }
    //if(ret_info->anim_size > 0)
    //{
    //    ret_info->anim_data.Copy(&obj_0->anim_data);
    //}

    return LW_RET_OK;
}

LW_VOID lwExpObjErrInfo(LW_RESULT ret)
{
    int err_id;
    char err_str[][256] =
    {
        "unknown error code",
        "not triangle object node",
        "export material data error",
        "vertex color flag error",
        "helper mesh data error",
        "merge object error",
        "dummy object error",
    };

    switch(ret)
    {
    case ERR_EXPOBJ_INVALID_TRIOBJECT:
        err_id = 1;
        break;
    case ERR_EXPOBJ_MATERIAL:
        err_id = 2;
        break;
    case ERR_EXPOBJ_VERTEXCOLOR:
        err_id = 3;
        break;
    case ERR_EXPOBJ_HELPERMESH:
        err_id = 4;
    case ERR_EXPOBJ_MERGEOBJECT:
        err_id = 5;
        break;
    case ERR_EXPOBJ_DUMMYOBJECT:
        err_id = 6;
        break;
    default:
        err_id = 0;
    }

    MessageBox(NULL, err_str[err_id], "error", MB_OK);

    return;
}

LW_RESULT lwDumpBlendedBone(const char* file, const lwBlendInfo* info, DWORD vert_num, INode* bone_node_seq)
{
    assert(0);

    FILE* fp = fopen(file, "wt");
    if(fp == NULL)
        return LW_RET_FAILED;

    BYTE id_buf[256];
    
    DWORD id_num = 0;

    for(DWORD i = 0; i < vert_num; i++)
    {
        for(DWORD j = 0; j < 4; j++)
        {
            BYTE op_id = info[i].index[j];

            for(DWORD k = 0; k < id_num; k++)
            {
                if(op_id == id_buf[k])
                    break;
            }

            if(k == id_num)
            {
                id_buf[id_num++] = op_id;
            }
        }
    }




    fclose(fp);

    return LW_RET_OK;
}


LW_RESULT lwExpModelPrimitive(lwModelNodeInfo* info, INode *node, Interface *io)
{
    LW_RESULT ret = LW_RET_FAILED;

    lwGeomObjInfo* data = LW_NEW(lwGeomObjInfo);

    DWORD mask = (EXP_BASEINFO | EXP_MTLTEXINFO | EXP_MESHINFO | EXP_BLENDINFO | EXP_HELPERINFO | EXP_DEFAULTBOUNDINGBOX);
    mask |= (EXP_ANIMDATA_MATRIX | EXP_ANIMDATA_TEXUV | EXP_ANIMDATA_TEXIMG | EXP_ANIMDATA_MTLOPACITY);

    if(LW_FAILED(lwExportGeomObjInfo(data, node, io, mask)))
        goto __ret;

    info->_id = data->id;
    info->_type = NODE_PRIMITIVE;    
    info->_data = data;

    data = 0;
    ret = LW_RET_OK;
__ret:
    LW_IF_DELETE(data);
    return ret;
}
LW_RESULT lwExpModelVertexlBlendCtrl(lwModelNodeInfo* info, INode *node, Interface *io)
{
    LW_RESULT ret;

    const int MAX_BONE_NUM = 256;
    INode* node_seq[MAX_BONE_NUM];
    lwBoneBaseInfo bone_seq[MAX_BONE_NUM];
    int bone_num = 0;
    int parent_id = LW_INVALID_INDEX;
    int max_bone_seq = MAX_BONE_NUM;

    lwAnimDataBone* data = LW_NEW(lwAnimDataBone);

    lwEnumBoneBaseInfo(bone_seq, &bone_num, LW_INVALID_INDEX, max_bone_seq, node_seq, node);

    if(LW_FAILED(lwExpAnimDataBone(data, bone_seq, bone_num, node_seq, io)))
        goto __ret;

    // 新版本兼容问题
    char* node_name = node->GetName();
    info->_type = NODE_BONECTRL;    
    info->_data = data;
    if(LW_SUCCEEDED(lwCheckMaskName(MASK_BONE, node_name)))
    {
        info->_id = lwGetMaskIDWithName(MASK_BONE, node_name);
    }
    else if(LW_SUCCEEDED(lwCheckMaskName(MASK_BONE2, node_name)))
    {
        info->_id = lwGetMaskIDWithName(MASK_BONE2, node_name);
    }
    else
    {
        info->_id = lwGetMaskIDWithName(MASK_BONE3, node_name);
    }

    data = 0;

    ret = LW_RET_OK;
__ret:
    LW_IF_DELETE(data);
    return ret;

}
LW_RESULT lwExpModelDummy(lwModelNodeInfo* info, INode *node, Interface *io)
{
    LW_RESULT ret;

    lwHelperDummyObjInfo* data = LW_NEW(lwHelperDummyObjInfo);

    DWORD id = lwGetMaskIDWithName(MASK_NODEDUMMY, node->GetName());
    Matrix3 mat3;
    lwMatrix44 mat;
    lwGetNodeLocalTM(node, &mat3, 0);
    FormM16(mat3, (float*)&mat._11);

    data->SetID(id);
    data->SetMatrix(&mat);

    if(LW_SUCCEEDED(lwCheckNodeAnimDataMatrix(node)))
    {
        lwAnimDataMatrix* anim_data = LW_NEW(lwAnimDataMatrix);
        if(LW_FAILED(lwExpAnimDataMatrix(anim_data, node)))
        {
            LW_DELETE(anim_data);
            goto __ret;
        }

        data->SetAnimDataMatrix((lwIAnimDataMatrix*)anim_data);
    }

    // 对于scene root , 该id将为-1
    info->_id = id;
    info->_type = NODE_DUMMY;    
    info->_data = data;

    data = 0;

    ret = LW_RET_OK;
__ret:
    LW_IF_DELETE(data);
    return ret;
}
LW_RESULT lwExpModelHelper(lwModelNodeInfo* info, INode *node, Interface *io)
{
    return 0;
}

LW_END