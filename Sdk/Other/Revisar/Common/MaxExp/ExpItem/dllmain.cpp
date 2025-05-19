//
#pragma once


#include "export.h"

#define KBSEXPORT_CLASS_ID	Class_ID(0x4e5cd3d6, 0x6e5bb00f)

const char* __lib_description = "ExportItem";
const char* __class_name = "ExportItem";

extern ClassDesc2* GetChExportDesc();

HINSTANCE hInstance;
int controlsInit = FALSE;


BOOL WINAPI DllMain(HINSTANCE hinstDLL,ULONG fdwReason,LPVOID lpvReserved)
{
	hInstance = hinstDLL;				// Hang on to this DLL's instance handle.

	if (!controlsInit) {
		controlsInit = TRUE;
		InitCustomControls(hInstance);	// Initialize MAX's custom controls
		InitCommonControls();			// Initialize Win95 controls
	}
			
	return (TRUE);
}

TCHAR *GetString(int id)
{
	static TCHAR buf[256];

	if (hInstance)
		return LoadString(hInstance, id, buf, sizeof(buf)) ? buf : NULL;
	return NULL;
}

__declspec( dllexport ) const TCHAR* LibDescription()
{
	return __lib_description;
}

//TODO: Must change this number when adding a new class
__declspec( dllexport ) int LibNumberClasses()
{
	return 1;
}

__declspec( dllexport ) ClassDesc* LibClassDesc(int i)
{
	switch(i) {
		case 0: return GetChExportDesc();
		default: return 0;
	}
}

__declspec( dllexport ) ULONG LibVersion()
{
	return VERSION_3DSMAX;
}



class ItemExport : public SceneExport 
{
public:


    static HWND hParams;


    int				ExtCount() { return 1; }					// Number of extensions supported
    const TCHAR *	Ext(int n) { return _T("lgo"); }			// Extension #n (i.e. "3DS")
    const TCHAR *	LongDesc() { return _T("lgo"); }			// Long ASCII description (i.e. "Autodesk 3D Studio File")
    const TCHAR *	ShortDesc(){ return _T("MindPower Item File"); }// Short ASCII description (i.e. "3D Studio")
    const TCHAR *	AuthorName() { return _T("lsh"); }			// ASCII Author name
    const TCHAR *	CopyrightMessage() { return _T(""); }		// ASCII Copyright message
    const TCHAR *	OtherMessage1() { return _T(""); }			// Other message #1
    const TCHAR *	OtherMessage2() { return _T(""); }			// Other message #2
    unsigned int	Version() { return 001; }					// Version number * 100 (i.e. v3.01 = 301)
    void			ShowAbout(HWND hWnd) {};		// Show DLL's "About..." box

    BOOL SupportsOptions(int ext, DWORD options);
    int				DoExport(const TCHAR *name,ExpInterface *ei,Interface *i, BOOL suppressPrompts=FALSE, DWORD options=0);


};

class ChExportClassDesc:public ClassDesc2 {
	public:
	int 			IsPublic() { return TRUE; }
	void *			Create(BOOL loading = FALSE) { return new ItemExport(); }
	const TCHAR *	ClassName() { return __class_name; }
	SClass_ID		SuperClassID() { return SCENE_EXPORT_CLASS_ID; }
	Class_ID		ClassID() { return KBSEXPORT_CLASS_ID; }
	const TCHAR* 	Category() { return _T(""); }

	const TCHAR*	InternalName() { return _T("ItemExport"); }	// returns fixed parsable name (scripter-visible name)
	HINSTANCE		HInstance() { return hInstance; }				// returns owning module handle

};



static ChExportClassDesc __ChExportDesc;
ClassDesc2* GetChExportDesc() { return &__ChExportDesc; }



BOOL ItemExport::SupportsOptions(int ext, DWORD options)
{
	// TODO Decide which options to support.  Simply return
	// true for each option supported by each Extension 
	// the exporter supports.

	return TRUE;
}


int	ItemExport::DoExport(const TCHAR *name,ExpInterface *ei,Interface *i, BOOL suppressPrompts, DWORD options)
{
	//TODO: Implement the actual file Export here and 
	//		return TRUE If the file is exported properly
    return ::DoExport( name, ei, i );
}


