// lwExpDlg.cpp : implementation file
//

#include "stdafx.h"
#include "ExpCharacter.h"
#include "lwExpDlg.h"

#include "lwExpUtil.h"

#include "resource.h"
#include ".\lwexpdlg.h"
LW_USING

const char* skin_name_mask = "obj_";
const int skin_name_mask_len = 4;

// lwExpDlg dialog 

IMPLEMENT_DYNAMIC(lwExpDlg, CDialog)
lwExpDlg::lwExpDlg(CWnd* pParent /*=NULL*/)
	: CDialog(lwExpDlg::IDD, pParent)
{
    _err_code = EXP_ERR_OK;
    _path[0] = 0;
    _exp_skin_mask = EXP_MASK_DEFAULT & ~( EXP_DEFAULTBOUNDINGBOX | EXP_ANIMDATA_BONE | EXP_ANIMDATA_MATRIX );

    //_sk_info = LW_NEW( lwSkeletonInfo );
    _bone_data = LW_NEW( lwAnimDataBone );
    _skin_info = LW_NEW( lwGeomObjInfo[ MAX_SKIN_NUM ] );
}

lwExpDlg::~lwExpDlg()
{
    //LW_SAFE_DELETE( _sk_info );
    LW_SAFE_DELETE( _bone_data );
    LW_SAFE_DELETE_A( _skin_info );
}

void lwExpDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
}


BEGIN_MESSAGE_MAP(lwExpDlg, CDialog)
    ON_WM_CREATE()
    ON_BN_CLICKED(ID_EXPORT, OnBnClickedExport)
    ON_BN_CLICKED(IDC_BTN_EXP_BONE, OnBnClickedBtnExpBone)
    ON_BN_CLICKED(IDC_BTN_EXP_SKIN0, OnBnClickedBtnExpSkin0)
    ON_BN_CLICKED(IDC_BTN_EXP_SKIN1, OnBnClickedBtnExpSkin1)
    ON_BN_CLICKED(IDC_BTN_EXP_SKIN2, OnBnClickedBtnExpSkin2)
    ON_BN_CLICKED(IDC_BTN_EXP_SKIN3, OnBnClickedBtnExpSkin3)
    ON_BN_CLICKED(IDC_BTN_EXP_SKIN4, OnBnClickedBtnExpSkin4)
    ON_BN_CLICKED(IDC_BTN_EXP_SKIN5, OnBnClickedBtnExpSkin5)
    ON_BN_CLICKED(IDC_BTN_COORD_STD_RIGHTHAND, OnBnClickedBtnCoordStdRighthand)
    ON_BN_CLICKED(IDC_BTN_COORD_STD_LEFTHAND, OnBnClickedBtnCoordStdLefthand)
    ON_BN_CLICKED(IDC_BTN_COORD_MINDPOWER, OnBnClickedBtnCoordMindpower)
    ON_BN_CLICKED(IDC_BTN_SKIN_ANIM_BONE, OnBnClickedBtnSkinAnimBone)
    ON_BN_CLICKED(IDC_BTN_SKIN_ANIM_MATRIX, OnBnClickedBtnSkinAnimMatrix)
    ON_BN_CLICKED(IDC_BTN_EXP_BOUNDINGOBJECT, OnBnClickedBtnExpBoundingobject)
    ON_BN_CLICKED(IDC_BTN_BONE_KEY_MAT43, OnBnClickedBtnBoneKeyMat43)
    ON_BN_CLICKED(IDC_BTN_BONE_KEY_MAT44, OnBnClickedBtnBoneKeyMat44)
    ON_BN_CLICKED(IDC_BTN_BONE_KEY_QUAT, OnBnClickedBtnBoneKeyQuat)
    ON_BN_CLICKED(IDC_BTN_EXP_SKIN6, OnBnClickedBtnExpSkin6)
    ON_BN_CLICKED(IDC_BTN_EXP_SKIN7, OnBnClickedBtnExpSkin7)
END_MESSAGE_MAP()


// lwExpDlg message handlers

BOOL lwExpDlg::OnInitDialog()
{
    CDialog::OnInitDialog();

    // TODO:  Add extra initialization here    
    char str[ 260 ];

    // path
    GetDlgItem( IDC_TXT_PATH )->SetWindowText( _path );
    GetDlgItem( IDC_TXT_PATH )->EnableWindow( 0 );

    // bone
    if( _bone_obj.state == 1 )
    {
        sprintf( str, "Bone: %s", _bone_obj.name );
    }
    else
    {
        strcpy( str, "Bone: " );
    }

    GetDlgItem( IDC_BTN_EXP_BONE )->SetWindowText( str );
    GetDlgItem( IDC_BTN_EXP_BONE )->EnableWindow( _bone_obj.state );
    ((CButton*)GetDlgItem( IDC_BTN_EXP_BONE ))->SetCheck( _bone_obj.state );

    // skin
    const UINT id_tab[] = 
    {
        IDC_BTN_EXP_SKIN0,
        IDC_BTN_EXP_SKIN1,
        IDC_BTN_EXP_SKIN2,
        IDC_BTN_EXP_SKIN3,
        IDC_BTN_EXP_SKIN4,
        IDC_BTN_EXP_SKIN5,
        IDC_BTN_EXP_SKIN6,
        IDC_BTN_EXP_SKIN7,
    };

    for( int i = 0; i < MAX_SKIN_NUM; i++ )
    {
        if( _skin_obj_seq[ i ].state == 1 )
        {
            sprintf( str, "Skin: %s", _skin_obj_seq[ i ].name );
        }
        else
        {
            strcpy( str, "Skin: " );
        }

        GetDlgItem( id_tab[ i ] )->SetWindowText( str );
        GetDlgItem( id_tab[ i ] )->EnableWindow( _skin_obj_seq[ i ].state );
        ((CButton*)GetDlgItem( id_tab[ i ] ))->SetCheck( _skin_obj_seq[ i ].state );
    }

    _pb_pos = 0;
    ((CProgressCtrl*)GetDlgItem( IDC_PROGRESS1 ))->SetRange( 0, 100 );
    ((CProgressCtrl*)GetDlgItem( IDC_PROGRESS1 ))->SetPos( _pb_pos );

    ((CButton*)GetDlgItem( IDC_BTN_COORD_MINDPOWER ))->SetCheck( 1 );
    _coord_type = LW_COORD_TYPE_MINDPOWER;

    ((CButton*)GetDlgItem( IDC_BTN_SKIN_ANIM_BONE ))->SetCheck( 0 );
    ((CButton*)GetDlgItem( IDC_BTN_SKIN_ANIM_MATRIX ))->SetCheck( 0 );

    ((CButton*)GetDlgItem( IDC_BTN_EXP_BOUNDINGOBJECT ))->SetCheck( 1 );

    ((CButton*)GetDlgItem( IDC_BTN_BONE_KEY_QUAT ))->SetCheck( 1 );
    _bone_data->_key_type = BONE_KEY_TYPE_QUAT;


    return TRUE;  // return TRUE unless you set the focus to a control
    // EXCEPTION: OCX Property Pages should return FALSE
}
BOOL lwExpDlg::Create(LPCTSTR lpszTemplateName, CWnd* pParentWnd)
{
    // TODO: Add your specialized code here and/or call the base class

    return CDialog::Create(lpszTemplateName, pParentWnd);
}

int lwExpDlg::OnCreate(LPCREATESTRUCT lpCreateStruct)
{
    if (CDialog::OnCreate(lpCreateStruct) == -1)
        return -1;

    // TODO:  Add your specialized creation code here

    return 0;
}



void lwExpDlg::OnBnClickedExport()
{
    // TODO: Add your control notification handler code here

    if( DoExpData() == 0 )
        return;

    SaveExpData();    

}

void lwExpDlg::OnBnClickedBtnExpBone()
{
    // TODO: Add your control notification handler code here
    _bone_obj.state = ((CButton*)GetDlgItem( IDC_BTN_EXP_BONE ))->GetCheck();
}

void lwExpDlg::OnBnClickedBtnExpSkin0()
{
    // TODO: Add your control notification handler code here
    _skin_obj_seq[ 0 ].state = ((CButton*)GetDlgItem( IDC_BTN_EXP_SKIN0 ))->GetCheck();
}

void lwExpDlg::OnBnClickedBtnExpSkin1()
{
    // TODO: Add your control notification handler code here
    _skin_obj_seq[ 1 ].state = ((CButton*)GetDlgItem( IDC_BTN_EXP_SKIN1 ))->GetCheck();
}

void lwExpDlg::OnBnClickedBtnExpSkin2()
{
    // TODO: Add your control notification handler code here
    _skin_obj_seq[ 2 ].state = ((CButton*)GetDlgItem( IDC_BTN_EXP_SKIN2 ))->GetCheck();
}

void lwExpDlg::OnBnClickedBtnExpSkin3()
{
    // TODO: Add your control notification handler code here
    _skin_obj_seq[ 3 ].state = ((CButton*)GetDlgItem( IDC_BTN_EXP_SKIN3 ))->GetCheck();
}

void lwExpDlg::OnBnClickedBtnExpSkin4()
{
    // TODO: Add your control notification handler code here
    _skin_obj_seq[ 4 ].state = ((CButton*)GetDlgItem( IDC_BTN_EXP_SKIN4 ))->GetCheck();
}

void lwExpDlg::OnBnClickedBtnExpSkin5()
{
    // TODO: Add your control notification handler code here
    _skin_obj_seq[ 5 ].state = ((CButton*)GetDlgItem( IDC_BTN_EXP_SKIN5 ))->GetCheck();
}
void lwExpDlg::OnBnClickedBtnExpSkin6()
{
    // TODO: Add your control notification handler code here
    _skin_obj_seq[ 6 ].state = ((CButton*)GetDlgItem( IDC_BTN_EXP_SKIN6 ))->GetCheck();
}

void lwExpDlg::OnBnClickedBtnExpSkin7()
{
    // TODO: Add your control notification handler code here
    _skin_obj_seq[ 7 ].state = ((CButton*)GetDlgItem( IDC_BTN_EXP_SKIN7 ))->GetCheck();
}

int lwExpDlg::InitExpData( const char* file,ExpInterface *ei,Interface *i )
{
    _ei = ei;
    _i = i;

    char driver[ 128 ];
    char dir[ 260 ];
    char name[ 260 ];
    _splitpath( file, driver, dir, name, NULL );

    // path info
    sprintf( _path, "%s%s", driver, dir );
    strcpy( _name, name );

    if( strlen( _name ) != 8 )
    {
        _err_code = EXP_ERR_INVALID_NAME;
        goto __ret_error;
        
    }
 
     //1.enumerate tree node, get data
    INode* node;
    INode* root_node = i->GetRootNode();
    int child_node_num = root_node->NumberOfChildren();

    for( int ind = 0; ind < child_node_num; ind++ )
    {
        node = root_node->GetChildNode( ind );

        if( GetSkinModifier( node ) )
        {
            break;
        }

        if( GetPhysiqueModifier( node ) )
        {
            break;
        }        
    }
    

    // init bone obj_id
    if( ind == child_node_num )
    {
        _bone_obj.state = 0;
        strcpy( _bone_obj.name, "" );
    }
    else
    {
        _bone_obj.state = 1;
        strcpy( _bone_obj.name, name );
        _bone_obj.name[ 4 ] = 0;
        strcat( _bone_obj.name, ".lab" );        
    }

    _bone_obj.node = node;

    // init skin obj_id
    int skin_id;
    //
    // 2. enumerate skin node
    memset( _skin_obj_seq, 0, sizeof(lwExpDlgObj) * MAX_SKIN_NUM );

    INode* node_seq[ MAX_SKIN_NUM ];
    int node_num = 0;

    for( int ind = 0; ind < child_node_num; ind++ )
    {
        node = root_node->GetChildNode( ind );

        if( node->IsNodeHidden() )
            continue;

#if 0
        // 只用于绑定了骨骼动画的物体
        if( GetSkinModifier( node ) || GetPhysiqueModifier( node ) )
#else
        // 可以不使用骨骼动画的物体
        if( strncmp( node->GetName(), skin_name_mask, skin_name_mask_len ) == 0 )
#endif
        {
            lwEnumObjNode( node_seq, &node_num, MAX_SKIN_NUM, node );

        }
    }

    for( int j = 0; j < node_num; j++ )
    {
        //if( strncmp( node->GetName(), skin_name_mask, skin_name_mask_len ) )
        //{
        //    _err_code = EXP_ERR_INVALID_SKINNAME;
        //    goto __ret_error;
        //}

        skin_id = atoi( node_seq[ j ]->GetName() + skin_name_mask_len );

        if( skin_id >= MAX_SKIN_NUM )
        {
            _err_code = EXP_ERR_INVALID_SKINNAME;
            goto __ret_error;
        }

        _skin_obj_seq[ skin_id ].state = 1;            
        sprintf( _skin_obj_seq[ skin_id ].name, "%s%02d%s", name, skin_id, ".lgo" );

        _skin_obj_seq[ skin_id ].node = node_seq[ j ];

    }

    return 1;

__ret_error:
    ShowErrDlg();
    return 0;
}

void lwExpDlg::ShowErrDlg()
{
    const char* err_str = str_err_code[ _err_code ];
    ::MessageBox( NULL, err_str, "error", MB_OK );
}

int lwExpDlg::DoExpData()
{
    lwSetCoordType( (lwExpCoordTypeEnum)_coord_type );

     //1.enumerate tree node, get data
    const int MAX_BONE_NUM = 256;
    INode* node_seq[ MAX_BONE_NUM ];
    lwBoneBaseInfo bone_seq[ MAX_BONE_NUM ];
    int bone_num = 0;
    int parent_id = LW_INVALID_INDEX;
    int max_bone_seq = MAX_BONE_NUM;
       
    LW_RESULT ret;

    _pb_pos += 5;
    ((CProgressCtrl*)GetDlgItem( IDC_PROGRESS1 ))->SetPos( _pb_pos );

    if( _bone_obj.state == 1 )
    {
        if( GetSkinModifier( _bone_obj.node ) )
        {
            lwEnumBoneBaseInfoBySkin( bone_seq, &bone_num, max_bone_seq, node_seq, _bone_obj.node );
        }
        else if( GetPhysiqueModifier( _bone_obj.node ) )
        {
            lwEnumBoneBaseInfoByPhysique( bone_seq, &bone_num, max_bone_seq, node_seq, _bone_obj.node );
        }        

        //lwFillSkeletonInfo( _sk_info, bone_seq, bone_num, node_seq, _i );
        lwExpAnimDataBone( _bone_data, bone_seq, bone_num, node_seq, _i );
    }

    _pb_pos += 5;
    ((CProgressCtrl*)GetDlgItem( IDC_PROGRESS1 ))->SetPos( _pb_pos );
    

    //
    // 2. enumerate skin node
    for( int ind = 0; ind < MAX_SKIN_NUM; ind++ )
    {
        if( _skin_obj_seq[ ind ].state == 0 )
            continue;

        if( LW_FAILED( ret = lwExportGeomObjInfo( &_skin_info[ ind ], _skin_obj_seq[ ind ].node, _i, _exp_skin_mask ) ) )
        {
            lwExpObjErrInfo( ret );
            return 0;
        }

        _pb_pos += 10;
        ((CProgressCtrl*)GetDlgItem( IDC_PROGRESS1 ))->SetPos( _pb_pos );            
    }

    _pb_pos = 60;
    ((CProgressCtrl*)GetDlgItem( IDC_PROGRESS1 ))->SetPos( _pb_pos );

    return 1;
}

int lwExpDlg::SaveExpData()
{
    char file[ 260 ];
    sprintf( file, "%s%s", _path, _bone_obj.name );

    // 2. save data
    if( _bone_obj.state == 1 )
    {
        //lwSaveAnimDataBone( file, _bone_data );
        _bone_data->Save( file );
    }

    _pb_pos = 70;
    ((CProgressCtrl*)GetDlgItem( IDC_PROGRESS1 ))->SetPos( _pb_pos );

    // 3.save multi-skin data
    for( int i = 0; i < MAX_SKIN_NUM; i++ )
    {
        if( _skin_obj_seq[ i ].state == 0 )
            continue;

        sprintf( file, "%s%s", _path, _skin_obj_seq[ i ].name );

        _skin_info[ i ].Save( file );

        _pb_pos += 5;
        ((CProgressCtrl*)GetDlgItem( IDC_PROGRESS1 ))->SetPos( _pb_pos );
    }

    _pb_pos = 100;
    ((CProgressCtrl*)GetDlgItem( IDC_PROGRESS1 ))->SetPos( _pb_pos );

    MessageBox( "Export Success", "^_^", MB_OK );

    return 1;
}

void lwExpDlg::PostNcDestroy()
{
    // TODO: Add your specialized code here and/or call the base class

    CDialog::PostNcDestroy();
}

void lwExpDlg::OnBnClickedBtnCoordStdRighthand()
{
    // TODO: Add your control notification handler code here
    if( ((CButton*)GetDlgItem( IDC_BTN_COORD_STD_RIGHTHAND ))->GetCheck() )
    {
        _coord_type = LW_COORD_TYPE_RIGHTHAND;

        ((CButton*)GetDlgItem( IDC_BTN_COORD_STD_LEFTHAND ))->SetCheck( 0 );
        ((CButton*)GetDlgItem( IDC_BTN_COORD_MINDPOWER ))->SetCheck( 0 );
    }
    
}

void lwExpDlg::OnBnClickedBtnCoordStdLefthand()
{
    // TODO: Add your control notification handler code here
    if( ((CButton*)GetDlgItem( IDC_BTN_COORD_STD_LEFTHAND ))->GetCheck() )
    {
        _coord_type = LW_COORD_TYPE_LEFTHAND;

        ((CButton*)GetDlgItem( IDC_BTN_COORD_STD_RIGHTHAND ))->SetCheck( 0 );
        ((CButton*)GetDlgItem( IDC_BTN_COORD_MINDPOWER ))->SetCheck( 0 );
    }
}

void lwExpDlg::OnBnClickedBtnCoordMindpower()
{
    // TODO: Add your control notification handler code here
    if( ((CButton*)GetDlgItem( IDC_BTN_COORD_MINDPOWER ))->GetCheck() )
    {
        _coord_type = LW_COORD_TYPE_MINDPOWER;

        ((CButton*)GetDlgItem( IDC_BTN_COORD_STD_LEFTHAND ))->SetCheck( 0 );
        ((CButton*)GetDlgItem( IDC_BTN_COORD_STD_RIGHTHAND ))->SetCheck( 0 );
    }
}

void lwExpDlg::OnBnClickedBtnSkinAnimBone()
{
    // TODO: Add your control notification handler code here
    if( ((CButton*)GetDlgItem( IDC_BTN_SKIN_ANIM_BONE ))->GetCheck() )
    {
        _exp_skin_mask |= EXP_ANIMDATA_BONE;
    }
    else
    {
        _exp_skin_mask &= ~EXP_ANIMDATA_BONE;
    }     
}

void lwExpDlg::OnBnClickedBtnSkinAnimMatrix()
{
    // TODO: Add your control notification handler code here
    if( ((CButton*)GetDlgItem( IDC_BTN_SKIN_ANIM_MATRIX ))->GetCheck() )
    {
        _exp_skin_mask |= EXP_ANIMDATA_MATRIX;
    }
    else
    {
        _exp_skin_mask &= ~EXP_ANIMDATA_MATRIX;
    }     
}

void lwExpDlg::OnBnClickedBtnExpBoundingobject()
{
    // TODO: Add your control notification handler code here
    if( ((CButton*)GetDlgItem( IDC_BTN_EXP_BOUNDINGOBJECT ))->GetCheck() )
    {
        //_exp_skin_mask |= EXP_BOUNDING_OBJECT;
    }
    else
    {
        //_exp_skin_mask &= ~EXP_BOUNDING_OBJECT;
    }     
}

void lwExpDlg::OnBnClickedBtnBoneKeyMat43()
{
    // TODO: Add your control notification handler code here
    if( ((CButton*)GetDlgItem( IDC_BTN_BONE_KEY_MAT43 ))->GetCheck() )
    {
        _bone_data->_key_type = BONE_KEY_TYPE_MAT43;

        ((CButton*)GetDlgItem( IDC_BTN_BONE_KEY_MAT44 ))->SetCheck( 0 );
        ((CButton*)GetDlgItem( IDC_BTN_BONE_KEY_QUAT ))->SetCheck( 0 );
    }

}

void lwExpDlg::OnBnClickedBtnBoneKeyMat44()
{
    // TODO: Add your control notification handler code here
    if( ((CButton*)GetDlgItem( IDC_BTN_BONE_KEY_MAT44 ))->GetCheck() )
    {
        _bone_data->_key_type = BONE_KEY_TYPE_MAT44;

        ((CButton*)GetDlgItem( IDC_BTN_BONE_KEY_MAT43 ))->SetCheck( 0 );
        ((CButton*)GetDlgItem( IDC_BTN_BONE_KEY_QUAT ))->SetCheck( 0 );
    }
}

void lwExpDlg::OnBnClickedBtnBoneKeyQuat()
{
    // TODO: Add your control notification handler code here
    if( ((CButton*)GetDlgItem( IDC_BTN_BONE_KEY_QUAT ))->GetCheck() )
    {
        _bone_data->_key_type = BONE_KEY_TYPE_QUAT;

        ((CButton*)GetDlgItem( IDC_BTN_BONE_KEY_MAT43 ))->SetCheck( 0 );
        ((CButton*)GetDlgItem( IDC_BTN_BONE_KEY_MAT44 ))->SetCheck( 0 );
    }
}

