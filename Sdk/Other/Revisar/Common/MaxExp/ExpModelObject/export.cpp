//
#include "export.h"
#include "lwExpUtil.h"

LW_USING

#define LW_EXPORT_MERGE_OBJECT

int DoExport(const char* file,ExpInterface *ei,Interface *i)
{
    // 1.enumerate tree node, get data
       INode* root_node = i->GetRootNode();

       lwModelObjInfo info;

#ifdef LW_EXPORT_MERGE_OBJECT
    // begin merge object sequence
    DWORD const max_merge_num = LW_MAX_MODEL_GEOM_OBJ_NUM * 32;
    lwGeomObjInfo* merge_obj_seq = LW_NEW( lwGeomObjInfo[ max_merge_num ] );
    DWORD merge_num_seq[ LW_MAX_MODEL_GEOM_OBJ_NUM ];
    memset( merge_num_seq, 0, sizeof( DWORD ) * LW_MAX_MODEL_GEOM_OBJ_NUM );
    // end
#endif

    LW_RESULT ret;

    DWORD mask = EXP_MASK_DEFAULT;

    // begin enmulate child objects
    INode* child_node;
    int child_node_num = root_node->NumberOfChildren();
    Object* child_obj;
    char* child_name;

    // helper object
    lwHelperInfo* hi = &info.helper_data;
    hi->dummy_seq = LW_NEW( lwHelperDummyInfo[ LW_MAX_OBJ_DUMMY_NUM ] );
    hi->dummy_num = 0;

    hi->mesh_seq = LW_NEW( lwHelperMeshInfo[ LW_MAX_HELPER_MESH_NUM ] );
    hi->box_seq = LW_NEW( lwHelperBoxInfo[ LW_MAX_HELPER_BOX_NUM ] );
    hi->mesh_num = 0;
    hi->box_num = 0;

    hi->bbox_seq = LW_NEW( lwBoundingBoxInfo[ LW_MAX_BOUNDING_BOX_NUM ] );
    hi->bsphere_seq = LW_NEW( lwBoundingSphereInfo[ LW_MAX_BOUNDING_SPHERE_NUM ] );
    hi->bbox_num = 0;
    hi->bsphere_num = 0;

    for( int j = 0; j < child_node_num; j++ )
    {
        child_node = root_node->GetChildNode( j );

        if( child_node->IsHidden() )
            continue;

        child_name = child_node->GetName();
        child_obj = child_node->EvalWorldState( 0 ).obj;
        
        if( LW_SUCCEEDED( lwCheckMaskName( MASK_OBJ, child_name ) ) )
        {
            if( child_obj->CanConvertToType( triObjectClassID ) == 0 )
            {
                ret = ERR_EXPOBJ_INVALID_TRIOBJECT;
                goto __ret;
            }

#ifdef LW_EXPORT_MERGE_OBJECT

            if( LW_SUCCEEDED( lwCheckMaskNameToken( 'm', child_name ) ) )
            {
                int merge_id;
                if( LW_FAILED( lwGetMaskNameTokenParamI( &merge_id, 'm', child_name ) ) )
                {
                    ret = ERR_EXPOBJ_MERGEOBJECT;
                    goto __ret;
                }

                assert( merge_id < 32 );

                int obj_id = lwGetMaskIDWithName( MASK_OBJ, child_name );

                lwGeomObjInfo* goi = &merge_obj_seq[ obj_id * LW_MAX_MODEL_GEOM_OBJ_NUM + merge_id ];

                if( LW_FAILED( ret = lwExportGeomObjInfo( goi, child_node, i, EXP_MASK_DEFAULT ) ) )
                {
                    lwExpObjErrInfo( ret );
                    return 0;
                }

                merge_num_seq[ obj_id ] += 1;
            }
            else
#endif
            {
                lwGeomObjInfo* goi = LW_NEW( lwGeomObjInfo );
                if( LW_FAILED( ret = lwExportGeomObjInfo( goi, child_node, i, EXP_MASK_DEFAULT ) ) )
                {
                    LW_DELETE( goi );
                    lwExpObjErrInfo( ret );
                    return 0;
                }
                info.geom_obj_seq[ info.geom_obj_num ] = goi;
                info.geom_obj_num += 1;            
            }

        }        
        else if( mask & EXP_HELPERINFO ) 
        {
            // helper dummy
            if( LW_SUCCEEDED( lwCheckMaskName( MASK_HELPER_DUMMY, child_name ) )
                && child_obj->ClassID() == Class_ID( DUMMY_CLASS_ID , 0 ) )
            {
                lwExpDummyObject( &hi->dummy_seq[ hi->dummy_num++ ], child_node );
                hi->type |= HELPER_TYPE_DUMMY;
            }
            else if( LW_SUCCEEDED( lwCheckMaskName( MASK_HELPER_MESH, child_name ) )
                && child_obj->CanConvertToType( triObjectClassID ) )
            {
                lwGeomObjInfo helper_info;

                if( LW_FAILED( lwExportGeomObjInfo( &helper_info, child_node, i, EXP_MASK_DEFAULT ) ) )
                    return ERR_EXPOBJ_HELPERMESH;

                lwHelperMeshInfo* hmi = &hi->mesh_seq[ hi->mesh_num ];

                if( LW_FAILED( lwCreateHelperMeshInfo( hmi, &helper_info.mesh ) ) )
                    return ERR_EXPOBJ_HELPERMESH;

                hmi->id = lwGetMaskIDWithName( MASK_HELPER_MESH, child_name );
                lwGetMaskNameWithName( hmi->name, child_name );
                lwGetMaskNameTokenParamI( (int*)&hmi->type, 't', child_name );
                lwGetMaskNameTokenParamI( (int*)&hmi->sub_type, 's', child_name );
                hmi->mat = helper_info.mat_local;

                hi->mesh_num += 1;
                hi->type |= HELPER_TYPE_MESH;
            }
            else if( LW_SUCCEEDED( lwCheckMaskName( MASK_HELPER_BOX, child_name ) )
                && child_obj->ClassID() == Class_ID( BOXOBJ_CLASS_ID , 0 ) )
            {
                lwExpHelperBox( &hi->box_seq[ hi->box_num++ ], child_node );
                hi->type |= HELPER_TYPE_BOX;
            }
            // bounding object
            else if( LW_SUCCEEDED( lwCheckMaskName( MASK_BOUNDING_BOX, child_name ) )
                && child_obj->ClassID() == Class_ID( BOXOBJ_CLASS_ID , 0 ) )
            {                                
                lwExpBoundingBox( &hi->bbox_seq[ hi->bbox_num++ ], child_node );
                hi->type |= HELPER_TYPE_BOUNDINGBOX;
            }
            // bounding sphere
            else if( LW_SUCCEEDED( lwCheckMaskName( MASK_BOUNDING_SPHERE, child_name ) )
                && child_obj->ClassID() == Class_ID( SPHERE_CLASS_ID , 0 ) )
            {                
                lwExpBoundingSphere( &hi->bsphere_seq[ hi->bsphere_num++ ], child_node );
                hi->type |= HELPER_TYPE_BOUNDINGSPHERE;
            }
        } 


    }
    
    if( hi->dummy_num == 0 )
    {
        LW_SAFE_DELETE_A( hi->dummy_seq );
    }
    if( hi->mesh_num == 0 )
    {
        LW_SAFE_DELETE_A( hi->mesh_seq );
    }

    if( hi->box_num == 0 )
    {
        LW_SAFE_DELETE_A( hi->box_seq );
    }
    if( hi->bbox_num == 0 )
    {
        LW_SAFE_DELETE_A( hi->bbox_seq );
    }
    if( hi->bsphere_num == 0 )
    {
        LW_SAFE_DELETE_A( hi->bsphere_seq );
    }

#ifdef LW_EXPORT_MERGE_OBJECT
    // begin process merge object
    for( DWORD i = 0; i < LW_MAX_MODEL_GEOM_OBJ_NUM; i++ )
    {
        if( merge_num_seq[ i ] == 0 )
            continue;

        lwGeomObjInfo* goi = LW_NEW( lwGeomObjInfo );

        if( LW_FAILED( lwMergeGeomObjInfo( goi, &merge_obj_seq[ i * LW_MAX_MODEL_GEOM_OBJ_NUM ], merge_num_seq[ i ] ) ) )
        {
            LW_DELETE( goi );
            ret = ERR_EXPOBJ_MERGEOBJECT;
            goto __ret;
        }

        info.geom_obj_seq[ info.geom_obj_num ] = goi;
        info.geom_obj_num += 1;
    }
    // end

    LW_DELETE_A( merge_obj_seq );

#endif

    // save data
    char path[ LW_MAX_PATH ];
    _tcscpy( path, file );
    size_t l = _tcslen( path );
    char* p = _tcsrchr( path, '.' );
    _tcslwr( p );


    info.SortGeomObjInfoWithID();
    info.Save( path );

 
__ret:

    return LW_SUCCEEDED( ret );
}



