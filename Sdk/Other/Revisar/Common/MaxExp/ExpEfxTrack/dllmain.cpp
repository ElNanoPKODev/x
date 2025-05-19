//
#pragma once


#include "export.h"

#pragma comment( lib, "user32.lib" )

#define EXPORT_CLASS_ID	Class_ID(0x58fa40e1, 0x79d7630d)

const char* __lib_description = "ExpShapeTrack";
const char* __class_name = "ExpShapeTrackObject";

extern ClassDesc2* GetExpDesc();

HINSTANCE hInstance;
int controlsInit = FALSE;


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
		case 0: return GetExpDesc();
		default: return 0;
	}
}

__declspec( dllexport ) ULONG LibVersion()
{
	return VERSION_3DSMAX;
}



class ShapeTrackExport : public SceneExport 
{
public:


    static HWND hParams;


    int				ExtCount() { return 1; }					// Number of extensions supported
    const TCHAR *	Ext(int n) { return _T("let"); }			// Extension #n (i.e. "3DS")
    const TCHAR *	LongDesc() { return _T("let"); }			// Long ASCII description (i.e. "Autodesk 3D Studio File")
    const TCHAR *	ShortDesc(){ return _T("MindPower let Files"); }// Short ASCII description (i.e. "3D Studio")
    const TCHAR *	AuthorName() { return _T("lsh"); }			// ASCII Author name
    const TCHAR *	CopyrightMessage() { return _T(""); }		// ASCII Copyright message
    const TCHAR *	OtherMessage1() { return _T(""); }			// Other message #1
    const TCHAR *	OtherMessage2() { return _T(""); }			// Other message #2
    unsigned int	Version() { return 001; }					// Version number * 100 (i.e. v3.01 = 301)
    void			ShowAbout(HWND hWnd) {};		// Show DLL's "About..." box

    BOOL SupportsOptions(int ext, DWORD options);
    int				DoExport(const TCHAR *name,ExpInterface *ei,Interface *i, BOOL suppressPrompts=FALSE, DWORD options=0);


};

class ExportClassDesc:public ClassDesc2 {
	public:
	int 			IsPublic() { return TRUE; }
	void *			Create(BOOL loading = FALSE) { return new ShapeTrackExport(); }
	const TCHAR *	ClassName() { return __class_name; }
	SClass_ID		SuperClassID() { return SCENE_EXPORT_CLASS_ID; }
	Class_ID		ClassID() { return EXPORT_CLASS_ID; }
	const TCHAR* 	Category() { return _T(""); }

	const TCHAR*	InternalName() { return _T("ShapeTrackExport"); }	// returns fixed parsable name (scripter-visible name)
	HINSTANCE		HInstance() { return hInstance; }				// returns owning module handle

};



static ExportClassDesc _exp_desc;
ClassDesc2* GetExpDesc() { return &_exp_desc; }



BOOL ShapeTrackExport::SupportsOptions(int ext, DWORD options)
{
	// TODO Decide which options to support.  Simply return
	// true for each option supported by each Extension 
	// the exporter supports.

	return TRUE;
}


int	ShapeTrackExport::DoExport(const TCHAR *name,ExpInterface *ei,Interface *i, BOOL suppressPrompts, DWORD options)
{
	//TODO: Implement the actual file Export here and 
	//		return TRUE If the file is exported properly
    return ::DoExport( name, ei, i );
}


