#SingleInstance, force

;IniRead, OutputVar, Filename, Section, Key [, Default]


;Reading Ini Settings File:::-------------------------
;---

;Reading Modifier Hotkey From Ini
IniRead, Ini_Modifier_Hotkey, 	settings.ini, 	Hotkey, 	Modifier_Hotkey, 	%A_Space%

;Program 1
IniRead, Ini_Hotkey_1, 			settings.ini, 	Program_1, 	Hotkey_1, 			%A_Space%
IniRead, Ini_Exe_1, 			settings.ini, 	Program_1, 	Exe_1, 				%A_Space%
IniRead, Ini_Path_1, 			settings.ini, 	Program_1, 	Path_1, 			%A_Space%
;Program 2	
IniRead, Ini_Hotkey_2, 			settings.ini, 	Program_2, 	Hotkey_2, 			%A_Space%
IniRead, Ini_Exe_2, 			settings.ini, 	Program_2, 	Exe_2, 				%A_Space%
IniRead, Ini_Path_2, 			settings.ini, 	Program_2, 	Path_2, 			%A_Space%
;Program 3	
IniRead, Ini_Hotkey_3, 			settings.ini, 	Program_3, 	Hotkey_3, 			%A_Space%
IniRead, Ini_Exe_3, 			settings.ini, 	Program_3, 	Exe_3, 				%A_Space%
IniRead, Ini_Path_3, 			settings.ini, 	Program_3, 	Path_3, 			%A_Space%
;Program 4	
IniRead, Ini_Hotkey_4, 			settings.ini, 	Program_4, 	Hotkey_4, 			%A_Space%
IniRead, Ini_Exe_4, 			settings.ini, 	Program_4, 	Exe_4, 				%A_Space%
IniRead, Ini_Path_4, 			settings.ini, 	Program_4, 	Path_4, 			%A_Space%
;Program 5	
IniRead, Ini_Hotkey_5, 			settings.ini, 	Program_5, 	Hotkey_5, 			%A_Space%
IniRead, Ini_Exe_5, 			settings.ini, 	Program_5, 	Exe_5, 				%A_Space%
IniRead, Ini_Path_5, 			settings.ini, 	Program_5, 	Path_5, 			%A_Space%
;Program 6	
IniRead, Ini_Hotkey_6, 			settings.ini, 	Program_6, 	Hotkey_6, 			%A_Space%
IniRead, Ini_Exe_6, 			settings.ini, 	Program_6, 	Exe_6, 				%A_Space%
IniRead, Ini_Path_6, 			settings.ini, 	Program_6, 	Path_6, 			%A_Space%
;Program 8	
IniRead, Ini_Hotkey_7, 			settings.ini, 	Program_7, 	Hotkey_7, 			%A_Space%
IniRead, Ini_Exe_7, 			settings.ini, 	Program_7, 	Exe_7, 				%A_Space%
IniRead, Ini_Path_7, 			settings.ini, 	Program_7, 	Path_7, 			%A_Space%
;Program 8	
IniRead, Ini_Hotkey_8, 			settings.ini, 	Program_8, 	Hotkey_8, 			%A_Space%
IniRead, Ini_Exe_8, 			settings.ini, 	Program_8, 	Exe_8, 				%A_Space%
IniRead, Ini_Path_8, 			settings.ini, 	Program_8, 	Path_8, 			%A_Space%
;---


;Layout --
;Field Sizes:
Path_Field_Width := 450        ;Size of Locate Program Path edit box


;ALL GUI FUNCTIONS ---------------------------------------------------------------------
;----------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------
;----------------------------------------------------------------------------------------

MakeGUI:
{

;Fields contents
;Program 1
If (Ini_Modifier_Hotkey = "")
	Disp_Modifier_Hotkey := Modifier_Hotkey
Else
	Disp_Modifier_Hotkey := Ini_Modifier_Hotkey

If (Ini_Hotkey_1 = "")
	Disp_Hotkey_1 := Hotkey_1
Else 
	Disp_Hotkey_1 := Ini_Hotkey_1

If (Ini_Exe_1 = "")
	Disp_Exe_1 := Exe_1
Else 
	Disp_Exe_1 := Ini_Exe_1

If (Ini_Path_1 = "")
	Disp_Path_1 := Path_1
Else 
	Disp_Path_1 := Ini_Path_1

;Program 2
If (Ini_Hotkey_2 = "")
	Disp_Hotkey_2 := Hotkey_2
Else 
	Disp_Hotkey_2 := Ini_Hotkey_2

If (Ini_Exe_2 = "")
	Disp_Exe_2 := Exe_2
Else 
	Disp_Exe_2 := Ini_Exe_2

If (Ini_Path_2 = "")
	Disp_Path_2 := Path_2
Else 
	Disp_Path_1 := Ini_Path_1

	;Program 3
If (Ini_Hotkey_3 = "")
	Disp_Hotkey_3 := Hotkey_3
Else 
	Disp_Hotkey_3 := Ini_Hotkey_3

If (Ini_Exe_3 = "")
	Disp_Exe_3 := Exe_3
Else 
	Disp_Exe_3 := Ini_Exe_3

If (Ini_Path_3 = "")
	Disp_Path_3 := Path_3
Else 
	Disp_Path_3 := Ini_Path_3

	;Program 4
If (Ini_Hotkey_4 = "")
	Disp_Hotkey_4 := Hotkey_4
Else 
	Disp_Hotkey_4 := Ini_Hotkey_4

If (Ini_Exe_4 = "")
	Disp_Exe_4 := Exe_4
Else 
	Disp_Exe_4 := Ini_Exe_4

If (Ini_Path_4 = "")
	Disp_Path_4 := Path_4
Else 
	Disp_Path_4 := Ini_Path_4

	;Program 5
If (Ini_Hotkey_5 = "")
	Disp_Hotkey_5 := Hotkey_5
Else 
	Disp_Hotkey_5 := Ini_Hotkey_5

If (Ini_Exe_5 = "")
	Disp_Exe_5 := Exe_5
Else 
	Disp_Exe_5 := Ini_Exe_5

If (Ini_Path_5 = "")
	Disp_Path_5 := Path_5
Else 
	Disp_Path_5 := Ini_Path_5

	;Program 6
If (Ini_Hotkey_6 = "")
	Disp_Hotkey_6 := Hotkey_6
Else 
	Disp_Hotkey_6 := Ini_Hotkey_6

If (Ini_Exe_6 = "")
	Disp_Exe_6 := Exe_6
Else 
	Disp_Exe_6 := Ini_Exe_6

If (Ini_Path_6 = "")
	Disp_Path_6 := Path_6
Else 
	Disp_Path_6 := Ini_Path_6

	;Program 7
If (Ini_Hotkey_7 = "")
	Disp_Hotkey_7 := Hotkey_7
Else 
	Disp_Hotkey_7 := Ini_Hotkey_7

If (Ini_Exe_7 = "")
	Disp_Exe_7 := Exe_7
Else 
	Disp_Exe_7 := Ini_Exe_7

If (Ini_Path_7 = "")
	Disp_Path_7 := Path_7
Else 
	Disp_Path_7 := Ini_Path_7

	;Program 8
If (Ini_Hotkey_8 = "")
	Disp_Hotkey_8 := Hotkey_8
Else 
	Disp_Hotkey_8 := Ini_Hotkey_8

If (Ini_Exe_8 = "")
	Disp_Exe_8 := Exe_8
Else 
	Disp_Exe_8 := Ini_Exe_8

If (Ini_Path_8 = "")
	Disp_Path_8 := Path_8
Else 
	Disp_Path_8 := Ini_Path_8


;Top Text
Gui, Font, s14, ;Size of first text label.
Gui, Add, Text, x10 y3 , Specify hotkey, name, path and executable of the program:
Gui, Font, s10 cgray, ;Style for example.
Gui, Add, Text,y+3 ,For example:`nPath: C:/ProgramFiles/Program/Program.exe   Exe: Program.exe

;Modifier hotkey
Gui, Font, s13 cblack  															;Font
Gui, Add, Text, x10 , Custom Modifier hotkey:									;Text
Gui, Add, Hotkey, x+5 w55 h25 vModifier_Hotkey, %Disp_Modifier_Hotkey%			;Variables for modifier
Gui, Font, s10 cblack, ;Size of the remaining labels








;Edit Fields For Programs
;--------------------------------------

;---
;Program 1 Input Fields
Gui, Add, Text, x10 y+15 , Hotkey:
Gui, Add, Hotkey, w50  x+10 							vHotkey_1, 	%Disp_Hotkey_1%
Gui, Add, Text, x+10 , Exe:
Gui, Add, Edit, w130 x+10 								vExe_1, 	%Disp_Exe_1%
Gui, Add, Text, x10 y+4, Program path:  													;Text
Gui, Add, Edit, w%Path_Field_Width%  y+5 ReadOnly	, 	%Disp_Path_1%
Gui, Add, Button, x+5 w45 h25 							g1_Select_Path hwndIcon
GuiButtonIcon(Icon, "imageres.dll", 204)

;Program 2 Input Fields
Gui, Add, Text, x10 , Hotkey:
Gui, Add, Hotkey, w50  x+10 							vHotkey_2, 	%Disp_Hotkey_2%
Gui, Add, Text, x+10 , Exe:
Gui, Add, Edit, w130 x+10 								vExe_2, 	%Disp_Exe_2%
Gui, Add, Text, x10 y+4, Program path:  													;Text
Gui, Add, Edit, w%Path_Field_Width%  y+5 ReadOnly	, 	%Disp_Path_2%
Gui, Add, Button, x+5 w45 h25 							g2_Select_Path hwndIcon
GuiButtonIcon(Icon, "imageres.dll", 204)

;Program 3 Input Fields
Gui, Add, Text, x10 , Hotkey:
Gui, Add, Hotkey, w50  x+10 							vHotkey_3, 	%Disp_Hotkey_3%
Gui, Add, Text, x+10 , Exe:
Gui, Add, Edit, w130 x+10 								vExe_3, 	%Disp_Exe_3%
Gui, Add, Text, x10 y+4, Program path:  													;Text
Gui, Add, Edit, w%Path_Field_Width%  y+5 ReadOnly	, 	%Disp_Path_3%
Gui, Add, Button, x+5 w45 h25 							g3_Select_Path hwndIcon
GuiButtonIcon(Icon, "imageres.dll", 204)

;Program 4 Input Fields
Gui, Add, Text, x10 , Hotkey:
Gui, Add, Hotkey, w50  x+10 							vHotkey_4, 	%Disp_Hotkey_4%
Gui, Add, Text, x+10 , Exe:
Gui, Add, Edit, w130 x+10 								vExe_4, 	%Disp_Exe_4%
Gui, Add, Text, x10 y+4, Program path:  													;Text
Gui, Add, Edit, w%Path_Field_Width%  y+5 ReadOnly	, 	%Disp_Path_4%
Gui, Add, Button, x+5 w45 h25 							g4_Select_Path hwndIcon
GuiButtonIcon(Icon, "imageres.dll", 204)


;Program 5 Input Fields
Gui, Add, Text, x10 , Hotkey:
Gui, Add, Hotkey, w50  x+10 							vHotkey_5, 	%Disp_Hotkey_5%
Gui, Add, Text, x+10 , Exe:
Gui, Add, Edit, w130 x+10 								vExe_5, 	%Disp_Exe_5%
Gui, Add, Text, x10 y+4, Program path:  													;Text
Gui, Add, Edit, w%Path_Field_Width%  y+5 ReadOnly	, 	%Disp_Path_5%
Gui, Add, Button, x+5 w45 h25 							g5_Select_Path hwndIcon
GuiButtonIcon(Icon, "imageres.dll", 204)


;Program 6 Input Fields
Gui, Add, Text, x10 , Hotkey:
Gui, Add, Hotkey, w50  x+10 							vHotkey_6, 	%Disp_Hotkey_6%
Gui, Add, Text, x+10 , Exe:
Gui, Add, Edit, w130 x+10 								vExe_6, 	%Disp_Exe_6%
Gui, Add, Text, x10 y+4, Program path:  													;Text
Gui, Add, Edit, w%Path_Field_Width%  y+5 ReadOnly	, 	%Disp_Path_6%
Gui, Add, Button, x+5 w45 h25 							g6_Select_Path hwndIcon
GuiButtonIcon(Icon, "imageres.dll", 204)


;Program 7 Input Fields
Gui, Add, Text, x10 , Hotkey:
Gui, Add, Hotkey, w50  x+10 							vHotkey_7, 	%Disp_Hotkey_7%
Gui, Add, Text, x+10 , Exe:
Gui, Add, Edit, w130 x+10 								vExe_7, 	%Disp_Exe_7%
Gui, Add, Text, x10 y+4, Program path:  													;Text
Gui, Add, Edit, w%Path_Field_Width%  y+5 ReadOnly	, 	%Disp_Path_7%
Gui, Add, Button, x+5 w45 h25 							g7_Select_Path hwndIcon
GuiButtonIcon(Icon, "imageres.dll", 204)


;Program 8 Input Fields
Gui, Add, Text, x10 , Hotkey:
Gui, Add, Hotkey, w50  x+10 							vHotkey_8, 	%Disp_Hotkey_8%
Gui, Add, Text, x+10 , Exe:
Gui, Add, Edit, w130 x+10 								vExe_8, 	%Disp_Exe_8%
Gui, Add, Text, x10 y+4, Program path:  													;Text
Gui, Add, Edit, w%Path_Field_Width%  y+5 ReadOnly	, 	%Disp_Path_8%
Gui, Add, Button, x+5 w45 h25 							g8_Select_Path hwndIcon
GuiButtonIcon(Icon, "imageres.dll", 204)














;Main GUI Params
;Save Settings Button
;Gui, Add, Button, w100 h30 x10 y720 gButtonOK, OK

Gui, Add, Button, x10 y+20 w60 h30 gReset_Fields, Reset
Gui, Add, Button, Default x+80 w200 h30 gSaveSettings, Save Settings
Gui, Add, Button, w150 h30 x+10 gCancelButton, Cancel
Gui, Show, w517 , Program Switcher Settings
return
}










;Functions ------------------------------------------------------------------------------------------------


1_Select_Path:
{
	;Gui, Submit, NoHide
	FileSelectFile, Path_1
	Gosub, Refresh_Gui
	Return
}

2_Select_Path:
{
	;Gui, Submit, NoHide
	FileSelectFile, Path_2
	Gosub, Refresh_Gui
	Return
}

3_Select_Path:
{
	;Gui, Submit, NoHide
	FileSelectFile, Path_3
	Gosub, Refresh_Gui
	Return
}

4_Select_Path:
{
	;Gui, Submit, NoHide
	FileSelectFile, Path_4
	Gosub, Refresh_Gui
	Return
}

5_Select_Path:
{
	;Gui, Submit, NoHide
	FileSelectFile, Path_5
	Gosub, Refresh_Gui
	Return
}

6_Select_Path:
{
	;Gui, Submit, NoHide
	FileSelectFile, Path_6
	Gosub, Refresh_Gui
	Return
}

7_Select_Path:
{
	;Gui, Submit, NoHide
	FileSelectFile, Path_7
	Gosub, Refresh_Gui
	Return
}

8_Select_Path:
{
	;Gui, Submit, NoHide
	FileSelectFile, Path_8
	Gosub, Refresh_Gui
	Return
}




;Calls
;
;

Refresh_Gui:
	{
		Gui, Submit, NoHide
		Gui, Destroy
		Gosub, MakeGUI
	}
	Return 

Reset_Fields:
	{
		MsgBox, 292, Reset, Do you really wish to reset all settings?
		IfMsgBox, Yes
		{
			Ini_Modifier_Hotkey := `t
			
			Ini_Hotkey_1 := `t
			Disp_Exe_1 := "`t"
			Disp_Path_1 := "`t"

			Disp_Hotkey_2 := "`t"
			Disp_Exe_2 := "`t"
			Disp_Path_2 := "`t"

			Disp_Hotkey_3 := "`t"
			Disp_Exe_3 := "`t"
			Disp_Path_3 := "`t"
		
			Disp_Hotkey_4 := "`t"
			Disp_Exe_4 := "`t"
			Disp_Path_4 := "`t"

			Disp_Hotkey_5 := "`t"
			Disp_Exe_5 := "`t"
			Disp_Path_5 := "`t"
		
			Disp_Hotkey_6 := "`t"
			Disp_Exe_6 := "`t"
			Disp_Path_6 := "`t"
		
			Disp_Hotkey_7 := "`t"
			Disp_Exe_7 := "`t"
			Disp_Path_7 := "`t"

			Disp_Hotkey_8 := "`t"
			Disp_Exe_8 := "`t"
			Disp_Path_8 := "`t"

			Gosub, Refresh_Gui
			MsgBox, 64, Reset, All settings has been erased. If you want to save it, press "Save Settings"
		}
	
	Return
	}

;IniWrite, Value, Filename, Section, Key
SaveSettings:
	Gui, Submit, NoHide
	
	IniWrite, %Modifier_Hotkey%, settings.ini, Hotkey, Modifier_Hotkey 		;Write Modifier Hotkey
	;Program 1
	IniWrite, %Hotkey_1%, settings.ini, Program_1, Hotkey_1
	IniWrite, %Exe_1%, settings.ini, Program_1, Exe_1
	IniWrite, %Path_1%, settings.ini, Program_1, Path_1
	;Program 2	
	IniWrite, %Hotkey_2%, settings.ini, Program_2, Hotkey_2
	IniWrite, %Exe_2%, settings.ini, Program_2, Exe_2
	IniWrite, %Path_2%, settings.ini, Program_2, Path_2
	;Program 3
	IniWrite, %Hotkey_3%, settings.ini, Program_3, Hotkey_3
	IniWrite, %Exe_3%, settings.ini, Program_3, Exe_3
	IniWrite, %Path_3%, settings.ini, Program_3, Path_3
	;Program 4	
	IniWrite, %Hotkey_4%, settings.ini, Program_4, Hotkey_4
	IniWrite, %Exe_4%, settings.ini, Program_4, Exe_4
	IniWrite, %Path_4%, settings.ini, Program_4, Path_4
	;Program 5
	IniWrite, %Hotkey_5%, settings.ini, Program_5, Hotkey_5
	IniWrite, %Exe_5%, settings.ini, Program_5, Exe_5
	IniWrite, %Path_5%, settings.ini, Program_5, Path_5
	;Program 6	
	IniWrite, %Hotkey_6%, settings.ini, Program_6, Hotkey_6
	IniWrite, %Exe_6%, settings.ini, Program_6, Exe_6
	IniWrite, %Path_6%, settings.ini, Program_6, Path_6
	;Program 7
	IniWrite, %Hotkey_7%, settings.ini, Program_7, Hotkey_7
	IniWrite, %Exe_7%, settings.ini, Program_7, Exe_7
	IniWrite, %Path_7%, settings.ini, Program_7, Path_7
	;Program 8	
	IniWrite, %Hotkey_8%, settings.ini, Program_8, Hotkey_8
	IniWrite, %Exe_8%, settings.ini, Program_8, Exe_8
	IniWrite, %Path_8%, settings.ini, Program_8, Path_8

	Sleep, 100
	MsgBox, 64, Program Switcher,Settings saved
	Sleep, 100
	ExitApp
	Return

CancelButton:
	ExitApp
	Return


;Closing GUI closes app.
GuiClose:
	ExitApp
	Return

;Adding Icons To Buttons
GuiButtonIcon(Handle, File, Index := 1, Size := 22, Margin := 6, Align := 4)
{
    Size -= Margin
    Psz := A_PtrSize = "" ? 4 : A_PtrSize, DW := "UInt", Ptr := A_PtrSize = "" ? DW : "Ptr"
    VarSetCapacity( button_il, 20 + Psz, 0 )
    NumPut( normal_il := DllCall( "ImageList_Create", DW, Size, DW, Size, DW, 0x21, DW, 1, DW, 1 ), button_il, 0, Ptr )
    NumPut( Align, button_il, 16 + Psz, DW )
    SendMessage, BCM_SETIMAGELIST := 5634, 0, &button_il,, AHK_ID %Handle%
    return IL_Add( normal_il, File, Index )
}