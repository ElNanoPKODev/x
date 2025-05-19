//
#include "export.h"
#include "lwExpUtil.h"
#include "lwEfxTrack.h"

LW_USING



int DoExport(const char* file,ExpInterface *ei,Interface *i)
{  
    int ret = 0;
    INode* node;
    INode* root_node = i->GetRootNode();
    int child_node_num = root_node->NumberOfChildren();
    Object* obj;
    char* node_name;
    lwEfxTrack et;
    lwAnimDataMatrix* data;
 
    for(int id = 0; id < child_node_num; id++)
    {
        node = root_node->GetChildNode(id);

        if(node->IsHidden())
            continue;

        node_name = node->GetName();
        obj = node->EvalWorldState(0).obj;
        
        if(obj->ClassID() != Class_ID( DUMMY_CLASS_ID , 0))
            continue;

        if(LW_SUCCEEDED(lwCheckMaskName(MASK_OBJ, node_name)))
        {
            data = LW_NEW(lwAnimDataMatrix);
            if(LW_FAILED(lwExpAnimDataMatrix(data, node)))
            {
                MessageBox(0, "export error", "", MB_OK);
                goto __ret;
            }
            et.SetData(data);
            break;
        }
 
    }
    
    // save data
    char path[ LW_MAX_PATH ];
    _tcscpy(path, file);
    size_t l = _tcslen(path);
    char* p = _tcsrchr(path, '.');
    _tcslwr(p);

    LW_FAILED_RET(et.Save(path));

 
    ret = 1;
__ret:
    if(LW_FAILED(ret))
    {
        MessageBox(0, "Export Efx Tracks Failed", "error", MB_OK);
    }
    
    return ret;
}


