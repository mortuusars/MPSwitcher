;#Persistent
#NoEnv
SendMode Input
#UseHook On
SetWorkingDir %A_ScriptDir%
if not A_IsAdmin
	Run *RunAs "%A_ScriptFullPath%" ; (A_AhkPath is usually optional if the script has the .ahk extension.) You would typically check  first.
#SingleInstance force ;only one instance may run at a time!
#MaxHotkeysPerInterval 200
Menu, Tray, Icon, SwitcherArrows.ico ;Changes tray icon to custom.



;Reading INI File for data.
IniRead, Ini_Modifier_Hotkey, settings.ini, Hotkey, Modifier_Hotkey, %A_Space%

;Read Program_1
IniRead, Ini_Hotkey_1, settings.ini, Program_1, Hotkey_1, %A_Space%
IniRead, Ini_Exe_1, settings.ini, Program_1, Exe_1, %A_Space%
IniRead, Ini_Path_1, settings.ini, Program_1, Path_1, %A_Space%

;Read Program_2
IniRead, Ini_Hotkey_1, settings.ini, Program_1, Hotkey_1, %A_Space%
IniRead, Ini_Exe_1, settings.ini, Program_1, Exe_1, %A_Space%
IniRead, Ini_Path_1, settings.ini, Program_1, Path_1, %A_Space%

;Read Program_3
IniRead, Ini_Hotkey_3, settings.ini, Program_3, Hotkey_3, %A_Space%
IniRead, Ini_Exe_3, settings.ini, Program_3, Exe_3, %A_Space%
IniRead, Ini_Path_3, settings.ini, Program_3, Path_3, %A_Space%

;Read Program_4
IniRead, Ini_Hotkey_4, settings.ini, Program_4, Hotkey_4, %A_Space%
IniRead, Ini_Exe_4, settings.ini, Program_4, Exe_4, %A_Space%
IniRead, Ini_Path_4, settings.ini, Program_4, Path_4, %A_Space%

;Read Program_5
IniRead, Ini_Hotkey_5, settings.ini, Program_5, Hotkey_5, %A_Space%
IniRead, Ini_Exe_5, settings.ini, Program_5, Exe_5, %A_Space%
IniRead, Ini_Path_5, settings.ini, Program_5, Path_5, %A_Space%

;Read Program_6
IniRead, Ini_Hotkey_6, settings.ini, Program_6, Hotkey_6, %A_Space%
IniRead, Ini_Exe_6, settings.ini, Program_6, Exe_6, %A_Space%
IniRead, Ini_Path_6, settings.ini, Program_6, Path_6, %A_Space%

;Read Program_7
IniRead, Ini_Hotkey_7, settings.ini, Program_7, Hotkey_7, %A_Space%
IniRead, Ini_Exe_7, settings.ini, Program_7, Exe_7, %A_Space%
IniRead, Ini_Path_7, settings.ini, Program_7, Path_7, %A_Space%

;Read Program_8
IniRead, Ini_Hotkey_8, settings.ini, Program_8, Hotkey_8, %A_Space%
IniRead, Ini_Exe_8, settings.ini, Program_8, Exe_8, %A_Space%
IniRead, Ini_Path_8, settings.ini, Program_8, Path_8, %A_Space%

;Formatting Variables to be useful for hotkey


;Modifier Hotkey Check
If (Ini_Modifier_Hotkey = "") 						;Check for Blank Modifier Hotkey
{
	Modifier_Hotkey := "" 							;If Blank = set modif var to blank.
}	
Else
{
	Modifier_Hotkey := Ini_Modifier_Hotkey " & " 	;Otherwise combine value from INI with spaces and "&" sign.
}



;Program_1
If (Ini_Hotkey_1 = "") 								;Check for Blank Ini setting. If Blank = Change hotkey to F24(Unusable)
{
	Form_Hotkey_1 := "F24"
}
Else 												;Combine ModifierHotkey with actual hotkey. If Modif is empty, it will
{													;cimbine as if theres no modifier.
Form_Hotkey_1 := Modifier_Hotkey Ini_Hotkey_1
}

;Program_2
If (Ini_Hotkey_2 = "") 								;Check for Blank Ini setting. If Blank = Change hotkey to F24(Unusable)
{
	Form_Hotkey_2 := "F24"
}
Else 												;Combine ModifierHotkey with actual hotkey. If Modif is empty, it will
{													;cimbine as if theres no modifier.
Form_Hotkey_2 := Modifier_Hotkey Ini_Hotkey_2
}

;Program_3
If (Ini_Hotkey_3 = "") 								;Check for Blank Ini setting. If Blank = Change hotkey to F24(Unusable)
{
	Form_Hotkey_3 := "F24"
}
Else 												;Combine ModifierHotkey with actual hotkey. If Modif is empty, it will
{													;cimbine as if theres no modifier.
Form_Hotkey_3 := Modifier_Hotkey Ini_Hotkey_3
}

;Program_4
If (Ini_Hotkey_4 = "") 								;Check for Blank Ini setting. If Blank = Change hotkey to F24(Unusable)
{
	Form_Hotkey_4 := "F24"
}
Else 												;Combine ModifierHotkey with actual hotkey. If Modif is empty, it will
{													;cimbine as if theres no modifier.
Form_Hotkey_4 := Modifier_Hotkey Ini_Hotkey_4
}

;Program_5
If (Ini_Hotkey_5 = "") 								;Check for Blank Ini setting. If Blank = Change hotkey to F24(Unusable)
{
	Form_Hotkey_5 := "F24"
}
Else 												;Combine ModifierHotkey with actual hotkey. If Modif is empty, it will
{													;cimbine as if theres no modifier.
Form_Hotkey_5 := Modifier_Hotkey Ini_Hotkey_5
}

;Program_6
If (Ini_Hotkey_6 = "") 								;Check for Blank Ini setting. If Blank = Change hotkey to F24(Unusable)
{
	Form_Hotkey_6 := "F24"
}
Else 												;Combine ModifierHotkey with actual hotkey. If Modif is empty, it will
{													;cimbine as if theres no modifier.
Form_Hotkey_6 := Modifier_Hotkey Ini_Hotkey_6
}

;Program_7
If (Ini_Hotkey_7 = "") 								;Check for Blank Ini setting. If Blank = Change hotkey to F24(Unusable)
{
	Form_Hotkey_7 := "F24"
}
Else 												;Combine ModifierHotkey with actual hotkey. If Modif is empty, it will
{													;cimbine as if theres no modifier.
Form_Hotkey_7 := Modifier_Hotkey Ini_Hotkey_7
}

;Program_8
If (Ini_Hotkey_8 = "") 								;Check for Blank Ini setting. If Blank = Change hotkey to F24(Unusable)
{
	Form_Hotkey_8 := "F24"
}
Else 												;Combine ModifierHotkey with actual hotkey. If Modif is empty, it will
{													;cimbine as if theres no modifier.
Form_Hotkey_8 := Modifier_Hotkey Ini_Hotkey_8
}

 

;Hotkeys formatted for use
Hotkey, %Form_Hotkey_1%, Hotkey_1
Hotkey, %Form_Hotkey_2%, Hotkey_2
Hotkey, %Form_Hotkey_3%, Hotkey_3
Hotkey, %Form_Hotkey_4%, Hotkey_4
Hotkey, %Form_Hotkey_5%, Hotkey_5
Hotkey, %Form_Hotkey_6%, Hotkey_6
Hotkey, %Form_Hotkey_7%, Hotkey_7
Hotkey, %Form_Hotkey_8%, Hotkey_8
;Returning Modifier Key to work:
Hotkey, %Ini_Modifier_Hotkey%, D_Modifier
Hotkey, ^%Ini_Modifier_Hotkey%, Ctrl_Modifier
Hotkey, !%Ini_Modifier_Hotkey%, Alt_Modifier
Hotkey, +%Ini_Modifier_Hotkey%, Shift_Modifier
Return


;Main Hotkey Functions
;Prog1
Hotkey_1:
	If !WinExist("ahk_exe "Ini_Exe_1) ;Without Percent Sigh
		{
			Run, %Ini_Path_1%
		}
	Else
		{
			WinActivate ahk_exe %Ini_Exe_1%
		}
Return

;Prog2
Hotkey_2:
	If !WinExist("ahk_exe "Ini_Exe_2) ;Without Percent Sigh
		{
			Run, %Ini_Path_2%
		}
	Else
		{
			WinActivate ahk_exe %Ini_Exe_2%
		}
Return

;Prog3
Hotkey_3:
	If !WinExist("ahk_exe "Ini_Exe_3) ;Without Percent Sigh
		{
			Run, %Ini_Path_3%
		}
	Else
		{
			WinActivate ahk_exe %Ini_Exe_3%
		}
Return

;Prog4
Hotkey_4:
	If !WinExist("ahk_exe "Ini_Exe_4) ;Without Percent Sigh
		{
			Run, %Ini_Path_4%
		}
	Else
		{
			WinActivate ahk_exe %Ini_Exe_4%
		}
Return

;Prog5
Hotkey_5:
	If !WinExist("ahk_exe "Ini_Exe_5) ;Without Percent Sigh
		{
			Run, %Ini_Path_5%
		}
	Else
		{
			WinActivate ahk_exe %Ini_Exe_5%
		}
Return

;Prog6
Hotkey_6:
	If !WinExist("ahk_exe "Ini_Exe_6) ;Without Percent Sigh
		{
			Run, %Ini_Path_6%
		}
	Else
		{
			WinActivate ahk_exe %Ini_Exe_6%
		}
Return

;Prog7
Hotkey_7:
	If !WinExist("ahk_exe "Ini_Exe_7) ;Without Percent Sigh
		{
			Run, %Ini_Path_7%
		}
	Else
		{
			WinActivate ahk_exe %Ini_Exe_7%
		}
Return

;Prog8
Hotkey_8:
	If !WinExist("ahk_exe "Ini_Exe_8) ;Without Percent Sigh
		{
			Run, %Ini_Path_8%
		}
	Else
		{
			WinActivate ahk_exe %Ini_Exe_8%
		}
Return


*/

;Return modifier key to working state
D_Modifier:
	{
		Send, {%Ini_Modifier_Hotkey%}
	}
	Return

Ctrl_Modifier:
	{
		Send, ^{%Ini_Modifier_Hotkey%}
	}
	Return

Shift_Modifier:
	{
		Send, +{%Ini_Modifier_Hotkey%}
	}
	Return

Alt_Modifier:
	{
		Send, !{%Ini_Modifier_Hotkey%}
	}
	Return


^Numpad1::Reload
^Numpad2::MsgBox, %Ini_Modifier_Hotkey%`n%Form_Hotkey_1% `n%Form_hotkey_2%`n%Form_Hotkey_3% `n%Form_Hotkey_4% `n%Form_Hotkey_5% `n%Form_Hotkey_6% `n%Form_Hotkey_7% `n%Form_Hotkey_8%
^Numpad3::MsgBox, %Ini_Modifier_Hotkey%
Return
