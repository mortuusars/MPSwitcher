#SingleInstance, Force
/*
Opening program:
	Setting default parameters.
	Checking if Ini was read.               				DONE
		If Not: 
				Read Ini 									DONE

	Checking if "initialization"							DONE
		If true: 
				Build starting GUI 							DONE			

Creating GUI contents:										DONE
	All input fields:										DONE
Saving settings:
	Writing Gui position on close.							DONE
	Splitting EXE name from path. 							DONE
	Removing from Ini previously stored settings.			DONE
	Writing ModHotkey, Hotkey, Exe, Path to Ini 			DONE
Button functions:
	All buttons.											DONE
*/

--------------------------------------------------------------------
--------------------------------------------------------------------
------------------------Starting parameters-------------------------
--------------------------------------------------------------------
--------------------------------------------------------------------

Ini_File := "settings.ini"
Gui_Title := "MPSwitcher Config"

Gui_Width := 650   
Gui_Height := 800

Initialization := 1								

Max_Programs := 22								;Maximum number of programs


--------------------------------------------------------------------
;Checks if ini file was read. So it won't be read every time something updates.
IfExist, %Ini_File%
 {
 	If (Ini_Was_Read != 1)
 	 {
 	 	GoSub, Read_Ini
 	 }
 }

;First Start
If (Initialization==1)
	{
		GoSub, Gui_Create
		Initialization := 0
		Return
	}

; END OF SELF RUNNING CODE
--------------------------------------------------------------------
Return





--------------------------------------------------------------------
--------------------------------------------------------------------
-----------------------Building GUI contents------------------------
--------------------------------------------------------------------
--------------------------------------------------------------------

; Creating GUI itself
Gui_Create:
{
;Color of the GUI BG
Gui, Color, f0f0f0


;Adds control for number of programs. 
;Variable   - N_of_Programs -   is controller for count of programs.
Gui, Font, s10 , Segoe ui
Gui, Add, Text, x389 y10,Number of programs:
Gui, Add, Edit, Number w45 x+10 y7 gGui_Submit
Gui, Add, UpDown, vN_of_Programs gGui_Submit Range1-%Max_Programs%, %N_of_Programs%
Gui, Add, Button, x+5 w65 y5 gCommit_Number Default, OK

;Text 
Gui, Font, s13, 
Gui, Add, Text, x10 y6, Specify hotkeys and path to program:

;Modifier
Gui, Font, s12
Gui, Add, Hotkey, x10 y+10 w43  vModifier_Hotkey, %Modifier_Hotkey%
Gui, Font, s13
Gui, Add, Text, x+5 y42, Modifier Hotkey

;Space Between top and edit fields
Gui, Font, s2
Gui, Add, Text, x10 y70, 
Gui, Font, s10


;Creation of Multiple controls.
i := 1
Loop %N_of_Programs%
	
	{
		Gui, Add, Text, x10 , Hotkey:
		Gui, Add, Hotkey, x+5 w40 h22 vHotkey_%i%, % Hotkey_%i%

		Gui, Add, Text, x+5 , Path:
		Gui, Add, Edit, x+5 w450 h22 vPath_%i%, % Path_%i%

		Gui, Add, Button, x+5 w50 h22 v%i% gOpen_File hwndIcon
		GuiButtonIcon(Icon, "imageres.dll", 204)
		i++
		j++
	}

i := 1




;Bottom buttons
;Reset
Gui, Add, Button, w100 x10 y+20 gReset_Button, Reset
;Save settings
Gui, Add, Button, w250 x+170 gSave_Settings_Button, Save Settings
;Cancel
Gui, Add, Button, w100 x+10 gCancel_Button, Cancel





--------------------------------------------------------------------
--------------------------------------------------------------------
------------------------Creating GUI Window-------------------------
--------------------------------------------------------------------
--------------------------------------------------------------------

If (Gui_Pos_X&&Gui_Pos_Y != "") 
 {
 	Gui, Show, x%Gui_Pos_X% y%Gui_Pos_Y% w%Gui_Width% , %Gui_Title%
 }
Else
 {
 	Gui, Show, w%Gui_Width% , %Gui_Title%
 }
}
Return





--------------------------------------------------------------------
--------------------------------------------------------------------
-------------------------------Labels-------------------------------
--------------------------------------------------------------------
--------------------------------------------------------------------
;Commits number of programs and creates GUI
Commit_Number:
	GoSub, Write_Gui_Position
	Gui, Submit, NoHide
	Gui, Destroy
	GoSub, Gui_Create
Return

;Opening file browser for selecting path to exe.
Open_File:
	k := A_GuiControl
	FileSelectFile, Path_%k%, , C:\, Select Path, Executables (*.exe)
	GuiControl, , Path_%k%, % Path_%k%
Return

;Reload
Gui_Reload:
	GoSub, Write_Gui_Position
	Gui, Destroy
	GoSub, Gui_Create
Return

; Submits data in the fields
Gui_Submit:
	Gui, Submit, NoHide
Return





--------------------------------------------------------------------
--------------------------------------------------------------------
-------------------Reading And Writing INI file---------------------
--------------------------------------------------------------------
--------------------------------------------------------------------

;Reading INI file for data
Read_Ini:
	Gui_Position = Gui_Pos_X,Gui_Pos_Y											; Read INI for data. Firstly for Last Gui Position.
	Loop, Parse, Gui_Position, `,
	IniRead, %A_LoopField%, %Ini_File%, Gui, %A_LoopField% , %A_Space%					; Then For other data.

	IniRead, N_of_Programs, %Ini_File%, General, Number_Of_Programs, 1
	IniRead, Modifier_Hotkey, %Ini_File%, General, Modifier_Hotkey, ; %A_Space%

	l := 1
	Loop, 30
		{
			IniRead, Hotkey_%l%, %Ini_File%, Program_%l%, Hotkey, %A_Space%
			IniRead, Exe_%l%, %Ini_File%, Program_%l%, Exe, %A_Space%
			IniRead, Path_%l%, %Ini_File%, Program_%l%, Path, %A_Space%
			l++
		}

	Ini_Was_Read := 1
Return

;Writing last GUI posotion before closing GUI.
Write_Gui_Position:
	WinGetPos, Gui_Pos_X, Gui_Pos_Y												; Get XY Position of GUI Window. 
	Gui_Position = Gui_Pos_X,Gui_Pos_Y											; Store it in Gui_Position for loop parsing

	Loop, Parse, Gui_Position, `,												; Read "Gui_position" for values. comma is a divider.
	IniWrite, % %A_LoopField%, %Ini_File%, Gui, %A_LoopField%					; Write to INI parsed values. 
 Return 																		; % in front looks deeper inside variable.
;																				; Without it if would return "Gui_Pos_X" instead of "345"

;Getting EXE from path
Split_Exe:
l := 1 																			;counter

Loop, %N_of_Programs%

	{
		SplitPath, % Path_%l%, Exe_%l%											;Split filename from path						
		l++
	}

Return

;Remove INI setting when resetting or before writing new settings.
Ini_Remove:
	
	IniDelete, %Ini_File%, General 											;Deletes General section. Number of programs and modifier hotkey

l := 1																		;Counter
Loop, 22																	;Loop 22(max n of programs) times

	{
		IniDelete, %Ini_File%, Program_%l%									;Deletes sections 1 to 22
		l++																	;Counter increase
	}
Return

;Writing INI FILE
Ini_Write:
	
	GoSub, Ini_Remove

	IniWrite, %N_of_Programs%, %Ini_File%, General, Number_Of_Programs
	IniWrite, %Modifier_Hotkey%, %Ini_File%, General, Modifier_Hotkey

	Gosub, Split_Exe

	l := 1

	Loop, %N_of_Programs%
		{
			IniWrite, % Hotkey_%l%, %Ini_File%, Program_%l%, Hotkey
			IniWrite, % Path_%l%, %Ini_File%, Program_%l%, Path
			IniWrite, % Exe_%l%, %Ini_File%, Program_%l%, Exe
			l++
		}
Return





--------------------------------------------------------------------
--------------------------------------------------------------------
-----------------------------Buttons--------------------------------
--------------------------------------------------------------------
--------------------------------------------------------------------

Reset_Button:
	MsgBox, 36, Reset, Do you want to reset all settings?
	IfMsgBox, Yes
		{
			GoSub, Ini_Remove
			MsgBox, Settings has been reset. Restart the program.
			GoSub, Write_Gui_Position
			ExitApp
		}
Return

Save_Settings_Button:
	Gui, Submit, NoHide
	GoSub, Ini_Write
	MsgBox, Settings successfully saved.
Return


;Cancel button
Cancel_Button:
	MsgBox, 36, Cancel, Exit the app?
		IfMsgBox, Yes
			{
				GoSub, Write_Gui_Position
				ExitApp
			}
	Return	


--------------------------------------------------------------------


;Closing GUI closes app.
GuiClose:
	GoSub, Write_Gui_Position
	ExitApp
	Return	

--------------------------------------------------------------------




numpad1::
	{
		listvars
		;Listvars
	}
Return

Numpad2::
	{
		GoSub, Ini_Remove
		Gui, Submit, Nohide
		GoSub, Ini_Write
	}
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