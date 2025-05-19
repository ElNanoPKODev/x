//
#include "export.h"
LW_USING



int DoExport(const char* file,ExpInterface *ei,Interface *i)
{
    // 1.enumerate tree node, get data
   
    // 1.enumerate tree node, get data
   
    INode* node;
    INode* root_node = i->GetRootNode();
    int child_node_num = root_node->NumberOfChildren();
    Object* obj;
    char* node_name;

    lwGeomObjInfo info;

    LW_RESULT ret;

    DWORD mask = EXP_MASK_DEFAULT;

    for( int ind = 0; ind < child_node_num; ind++ )
    {
        node = root_node->GetChildNode( ind );

        if( node->IsHidden() )
            continue;

        node_name = node->GetName();
        obj = node->EvalWorldState( 0 ).obj;
        
        if( LW_SUCCEEDED( lwCheckMaskName( MASK_OBJ, node_name ) ) )
        {
            if( obj->CanConvertToType( triObjectClassID ) == 0 )
            {
                ret = ERR_EXPOBJ_INVALID_TRIOBJECT;
                goto __ret;
            }

            if( LW_FAILED( ret = lwExportGeomObjInfo( &info, node, i, EXP_MASK_DEFAULT ) ) )
            {
                lwExpObjErrInfo( ret );
                return 0;
            }

            // item object only has one geometry object
            break;

        }
        else if( LW_SUCCEEDED( lwCheckMaskName( MASK_HELPER_DUMMY, node_name ) ) && obj->ClassID() == Class_ID( DUMMY_CLASS_ID , 0 ) )
        {
            MessageBox( NULL, "dummy object didnot linked parent", "warning", MB_OK );
        }
 
    }
    

    if( ind == child_node_num )
    {
        MessageBox( 0, "none item object can be exported", "warning", MB_OK );
        return 0;
    }

    // save data
    char path[ LW_MAX_PATH ];
    _tcscpy( path, file );
    size_t l = _tcslen( path );
    char* p = _tcsrchr( path, '.' );
    _tcslwr( p );


    ret = info.Save( path );

 
__ret:

    return LW_SUCCEEDED( ret );
}


