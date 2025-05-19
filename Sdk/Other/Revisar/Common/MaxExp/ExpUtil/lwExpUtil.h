//
#pragma once


#include "Max.h"
#include "istdplug.h"
#include "iparamb2.h"
#include "iparamm2.h"
#include "stdmat.h"
#include "modstack.h"
#include "iskin.h"
#include "simpobj.h"

#include <PhyExp.h>
#include <BIPEXP.h>

#pragma comment(lib, "comctl32.lib")
#pragma comment(lib, "core.lib")
#pragma comment(lib, "geom.lib")
#pragma comment(lib, "gfx.lib")
#pragma comment(lib, "mesh.lib")
#pragma comment(lib, "maxutil.lib")
#pragma comment(lib, "maxscrpt.lib")
#pragma comment(lib, "paramblk2.lib")

#define USE_DX_VERSION
#define LW_USE_DX9

#include "lwHeader.h"
#include "lwMath.h"
#include "lwErrorCode.h"
#include "lwExpObj.h"
#include "lwITypes.h"
#include "lwD3D.h"
#include "lwShaderTypes.h"
#include "lwAnimKeySetPRS.h"

LW_BEGIN

enum lwExpCoordTypeEnum
{
    LW_COORD_TYPE_RIGHTHAND =       0x0000,
    LW_COORD_TYPE_LEFTHAND =        0x0001,
    LW_COORD_TYPE_MINDPOWER =       (LW_COORD_TYPE_LEFTHAND | 0x0002),
};

enum lwMaskNameEnum
{
    MASK_OBJ =              0,
    MASK_BOUNDING_BOX =     1,
    MASK_BOUNDING_SPHERE =  2,
    MASK_HELPER_MESH =      3,
    MASK_HELPER_BOX =       4,
    MASK_HELPER_DUMMY =     5,
    MASK_BONE =             6,
    MASK_BONE2 =            7,
    MASK_BONE3 =            8,
    MASK_NODEDUMMY =        9,
    MASK_HELPER =           10
};

enum lwExpMaskInfo
{
    EXP_BASEINFO =                  0x0001,
    EXP_MTLTEXINFO =                0x0002,
    EXP_MESHINFO =                  0x0004,
    EXP_HELPERINFO =                0x0008,
    EXP_BLENDINFO =                 0x0010,
    EXP_DEFAULTBOUNDINGBOX =        0x0020,

    EXP_ANIMDATA_BONE =             0x0100,
    EXP_ANIMDATA_MATRIX =           0x0200,
    EXP_ANIMDATA_TEXUV =            0x0400,
    EXP_ANIMDATA_TEXIMG =           0x0800,
    EXP_ANIMDATA_MTLOPACITY =       0x1000,
    EXP_ANIMDATA =                  0xff00,

    // ====================================
    EXP_MASK_DEFAULT =              0xffff,
};

void lwSetCoordType(lwExpCoordTypeEnum type);

void lwEnumObjNode(INode* node_seq[], int* node_num, int max_node_seq, INode* node);

void lwEnumBoneBaseInfo(lwBoneBaseInfo* bone_seq, int* bone_num, int parent_id, int max_bone_seq, INode* node_seq[], INode* node);
void lwEnumBoneBaseInfoBySkin(lwBoneBaseInfo* bone_seq, int* bone_num, int max_bone_seq, INode* node_seq[], INode* skin_node);
void lwEnumBoneBaseInfoByPhysique(lwBoneBaseInfo* bone_seq, int* bone_num, int max_bone_seq, INode* node_seq[], INode* phy_node);
void lwFillSkeletonInfo(lwSkeletonInfo* sk, const lwBoneBaseInfo* bone_base_seq, int bone_num, INode* node_seq[], Interface *io);
INode* lwGetNodeBoneRootNode(INode* node);
LW_RESULT lwEnumBoneNode(INode* root_node, INode** out_node_seq, int* node_num, int node_seq_size); // 0: ok, -1: failure(exceed node_num)

void FormM16(Matrix3 &matrix, float *curM);
Control* _GetAnimatableControlWithName(Animatable *anim, char *name);
Modifier* GetModifier(INode* node, Class_ID id);
Modifier* GetSkinModifier(INode* node);
Modifier* GetPhysiqueModifier(INode* node);

int _DoExpTexData(lwTexInfo* ti, Texmap* tex);
int _DoExpMtlData(lwMtlTexInfo* mi, Mtl* mtl);
int _DoExportMaterial(lwMtlTexInfo* mtl_list[], Mtl* mtl_seq[], int* mtl_num, INode* node);
void GetBlendInfoBySkin(lwBlendInfo* blend_info, int* blend_num, ISkin* skin, ISkinContextData* skin_cd, int ver_id, INode* bone_node_seq[], int bone_nodes_num);
void GetBlendInfoByPhysique(lwBlendInfo* blend_info, int* blend_num, IPhyContextExport* phy_ce, int ver_id, INode* bone_node_seq[], int bone_node_num);

int lwGetBoneDummyInfo(lwBoneDummyInfo* dummy_info, DWORD parent_id, const Matrix3* parent_mat_local, INode* dummy_node);

LW_RESULT lwExpDefaultBoundingObject(lwBoundingBoxInfo* bb_info, lwBoundingSphereInfo* bs_info, INode* node);
int lwExpBoundingBox(lwBoundingBoxInfo* info, INode* node);
int lwExpBoundingSphere(lwBoundingSphereInfo* info, INode* node);
int lwExpHelperBox(lwHelperBoxInfo* info, INode* node);
int lwExpDummyObject(lwHelperDummyInfo* obj, INode* node);

LW_RESULT lwCheckNodeAnimDataMatrix(INode* node);
LW_RESULT lwExpAnimDataMatrix(lwAnimDataMatrix* anim_data, INode* node);
LW_RESULT lwExpAnimDataBone(lwAnimDataBone* data, const lwBoneBaseInfo* bone_base_seq, int bone_num, INode* node_seq[], Interface *io);
LW_RESULT lwExpAnimKeySetPRS(lwAnimKeySetPRS* key_set, INode* node);
LW_RESULT lwExpAnimDataTexUV(lwAnimDataTexUV* data, Texmap* tex);
LW_RESULT lwExpAnimDataTexImg(lwAnimDataTexImg* data, const lwTexInfo* base, DWORD num);
LW_RESULT lwExpAnimDataMtlOpacity(lwAnimDataMtlOpacity* data, StdMat* mtl);

LW_RESULT lwExpGeomObjHelperDummy(INode* obj_node, lwHelperInfo* helper_info);
LW_RESULT lwGetNodeBoundingBox(lwBox* box, lwMatrix44* mat_local, INode* node);

LW_RESULT lwCheckMaskName(DWORD type, const char* name);
DWORD lwGetMaskIDWithName(DWORD type, const char* name);
LW_RESULT lwGetMaskNameWithName(char* mask_name, const char* name);

LW_RESULT lwCheckMaskNameToken(char token, const char* name);
LW_RESULT lwGetMaskNameTokenParamI(int* param, char token, const char* name);

// error code:
enum
{
    ERR_EXPOBJ_INVALID_TRIOBJECT =          -11,
    ERR_EXPOBJ_MATERIAL =                   -12,
    ERR_EXPOBJ_VERTEXCOLOR =                -13,
    ERR_EXPOBJ_HELPERMESH =                 -14,
    ERR_EXPOBJ_MERGEOBJECT =                -15,
    ERR_EXPOBJ_DUMMYOBJECT =                -16,

};


LW_RESULT lwExportGeomObjInfo(lwGeomObjInfo* info, INode *node, Interface *io, DWORD mask);


LW_RESULT lwExpModelPrimitive(lwModelNodeInfo* info, INode *node, Interface *io);
LW_RESULT lwExpModelVertexlBlendCtrl(lwModelNodeInfo* info, INode *node, Interface *io);
LW_RESULT lwExpModelDummy(lwModelNodeInfo* info, INode *node, Interface *io);
LW_RESULT lwExpModelHelper(lwModelNodeInfo* info, INode *node, Interface *io);

LW_VOID lwExpObjErrInfo(LW_RESULT ret);

LW_RESULT lwMergeGeomObjInfo(lwGeomObjInfo* ret_info, const lwGeomObjInfo* obj_seq, DWORD obj_num);

LW_RESULT lwDumpBlendedBone(const char* file, const lwBlendInfo* info, DWORD vert_num, INode* bone_node_seq);

LW_END