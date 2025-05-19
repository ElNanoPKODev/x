//
#include "lwExpDlg.h"
#include "export.h"

//lwExpDlg* g_exp_dlg = 0;

int DoExport(const char* file,ExpInterface *ei,Interface *i)
{
    //LW_SAFE_DELETE( g_exp_dlg );
    //g_exp_dlg = LW_NEW( lwExpDlg );

    //g_exp_dlg->Create( MAKEINTRESOURCE( IDD_DIALOG1 ) );
    //g_exp_dlg->ShowWindow( SW_SHOW );

     //1.enumerate tree node, get data
    //const int MAX_BONE_NUM = 256;
    //INode* node_seq[ MAX_BONE_NUM ];
    //lwBoneBaseInfo bone_seq[ MAX_BONE_NUM ];
    //int bone_num = 0;
    //int parent_id = LW_INVALID_INDEX;
    //int max_bone_seq = MAX_BONE_NUM;
   
    //INode* node;
    //INode* root_node = i->GetRootNode();
    //int child_node_num = root_node->NumberOfChildren();

    //for( int ind = 0; ind < child_node_num; ind++ )
    //{
    //    node = root_node->GetChildNode( ind );

    //    if( GetSkinModifier( node ) )
    //    {
    //        lwEnumBoneBaseInfoBySkin( bone_seq, &bone_num, max_bone_seq, node_seq, node );
    //        break;
    //    }

    //    if( GetPhysiqueModifier( node ) )
    //    {
    //        lwEnumBoneBaseInfoByPhysique( bone_seq, &bone_num, max_bone_seq, node_seq, node );
    //        break;
    //    }        
    //}
    //

    //if( ind == child_node_num )
    //{
    //    MessageBox( NULL, "no skin object", "error", MB_OK );
    //    return 0;
    //}


    //lwFillSkeletonInfo( g_sk, bone_seq, bone_num, node_seq, i );

    ////
    //// 2. enumerate skin node
    //for( int ind = 0; ind < child_node_num; ind++ )
    //{
    //    node = root_node->GetChildNode( ind );

    //    if( node->IsNodeHidden() )
    //        continue;

    //    if( GetSkinModifier( node ) || GetPhysiqueModifier( node ) )
    //    {
    //        lwExportSkinMesh( &g_smi[ sk_num ], node_seq, bone_num, node );

    //        sk_num += 1;
    //    }
    //}


    /////////////////////////

    //g_exp_dlg->_file = file;
    //g_exp_dlg->_sk_info = sk;
    //g_exp_dlg->_skin_info = g_smi;
    //g_exp_dlg->_skin_num = sk_num;

  
    lwExpDlg dlg;
    if( dlg.InitExpData( file, ei, i ) )
    {
        dlg.DoModal();
    }
  

    return 1;
}


