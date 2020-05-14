;#Persistent
#NoEnv
SendMode Input
#UseHook On
SetWorkingDir %A_ScriptDir%
if not A_IsAdmin
	Run *RunAs "%A_ScriptFullPath%" ; (A_AhkPath is usually optional if the script has the .ahk extension.) You would typically check  first.
#SingleInstance force ;only one instance may run at a time!
#MaxHotkeysPerInterval 200
;Menu, Tray, Icon, SwitcherArrows.ico ;Changes tray icon to custom.

/*
Setting variables 															DONE
Reading INI for data 														DONE
	N_Of_Programs 															DONE
	Ini_Modifier_Hotkey 													DONE
	Looping for hotkey, exe, path 											DONE

Checking if hotkey is blank and setting F24 if true. 						DONE
	Modifier 																DONE
	Looping for program hotkeys 											DONE

Creating hotkeys from variables. 											DONE
	Modifier 																DONE
	Program hotkeys 														DONE

Main Hotkey Functions 														DONE

Returning Modifier Hotkey to working state.
*/

----------------------------------------------------------------------------
Ini_File := "settings.ini"


----------------------------------------------------------------------------
----------------------------------------------------------------------------
-----------------------Reading Ini file for settings------------------------
----------------------------------------------------------------------------
----------------------------------------------------------------------------
;Reading INI File for data. %A_Space% setting variable to 0 if not present in ini.

;N_Of_Programs
IniRead, N_Of_Programs, %Ini_File%, General, Number_Of_Programs, 1
;Modifier_Hotkey
IniRead, Ini_Modifier_Hotkey, %Ini_File%, General, Modifier_Hotkey, %A_Space%

i := 1
Loop, %N_Of_Programs%
	{
		IniRead, Ini_Hotkey_%i%, %Ini_File%, Program_%i%, Hotkey, %A_Space%
		IniRead, Ini_Exe_%i%, %Ini_File%, Program_%i%, Exe, %A_Space%
		IniRead, Ini_Path_%i%, %Ini_File%, Program_%i%, Path, %A_Space%
		i++
	}


;msgbox %Ini_Modifier_Hotkey%





----------------------------------------------------------------------------
----------------------------------------------------------------------------
----------------Formatting Variables to be useful for hotkey----------------
--IF Hotkeys is blank - Takes Ini_Hotkey_# and assigns F24 to Form_Hotkey_#-
---------IF Hotkeys is some KEY, assigns this key to Form_Hotkey_#----------
----------------------------------------------------------------------------
----------------------------------------------------------------------------

;Modifier Hotkey Check
If (Ini_Modifier_Hotkey = "") 										;Check for Blank Modifier Hotkey
{
	Modifier_Hotkey := "" 											;If Blank = set modif var to blank.
}	
Else
{
	Modifier_Hotkey := Ini_Modifier_Hotkey " & " 					;Otherwise combine value from INI with spaces and "&" sign.
}

;Programs Check
i := 1																;Counter
Loop, %N_Of_Programs%												;Loop for "Number of programs"
	{
		If (Ini_Hotkey_%i% = "") 										;Check for Blank Ini setting. If Blank = Change hotkey to F24(Unusable)
			{
				Form_Hotkey_%i% := "F24"
			}
		Else 														;Combine Modifier_Hotkey with actual hotkey. If Modif is empty, it will
			{														;combine as if theres no modifier.
				Form_Hotkey_%i% := Modifier_Hotkey Ini_Hotkey_%i%
			}
		i++															;Increment "i"
	}





----------------------------------------------------------------------------
----------------------------------------------------------------------------
------------------------------Creating Hotkeys -----------------------------
----------------------------------------------------------------------------
----------------------------------------------------------------------------

;Looping to create hotkeys
i := 1																		;Counter 
Loop, %N_Of_Programs%
	{
		Hotkey, % Form_Hotkey_%i% , Hotkey_%i%
		i++
	}

;Returning Modifier Key to work:
Hotkey, %Ini_Modifier_Hotkey%, D_Modifier
Hotkey, ^%Ini_Modifier_Hotkey%, Ctrl_Modifier
Hotkey, !%Ini_Modifier_Hotkey%, Alt_Modifier
Hotkey, +%Ini_Modifier_Hotkey%, Shift_Modifier





Return 
----------------------------------------------------------------------------
--------------------------End of AUTO EXECUTE code--------------------------
----------------------------------------------------------------------------







-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
---------------------------------Hotkey Functions -----------------------------
;-Manually(Cause i don't know how to create label or functions with variables)--
-------------------------------------------------------------------------------

;Prog_1
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

;Prog8
Hotkey_9:
	If !WinExist("ahk_exe "Ini_Exe_9) ;Without Percent Sigh
		{
			Run, %Ini_Path_9%
		}
	Else
		{
			WinActivate ahk_exe %Ini_Exe_9%
		}
Return

;Prog10
Hotkey_10:
	If !WinExist("ahk_exe "Ini_Exe_10) ;Without Percent Sigh
		{
			Run, %Ini_Path_10%
		}
	Else
		{
			WinActivate ahk_exe %Ini_Exe_10%
		}
Return

;Prog11
Hotkey_11:
	If !WinExist("ahk_exe "Ini_Exe_11) ;Without Percent Sigh
		{
			Run, %Ini_Path_11%
		}
	Else
		{
			WinActivate ahk_exe %Ini_Exe_11%
		}
Return

;Prog12
Hotkey_12:
	If !WinExist("ahk_exe "Ini_Exe_12) ;Without Percent Sigh
		{
			Run, %Ini_Path_12%
		}
	Else
		{
			WinActivate ahk_exe %Ini_Exe_12%
		}
Return

;Prog13
Hotkey_13:
	If !WinExist("ahk_exe "Ini_Exe_13) ;Without Percent Sigh
		{
			Run, %Ini_Path_13%
		}
	Else
		{
			WinActivate ahk_exe %Ini_Exe_13%
		}
Return

;Prog14
Hotkey_14:
	If !WinExist("ahk_exe "Ini_Exe_14) ;Without Percent Sigh
		{
			Run, %Ini_Path_14%
		}
	Else
		{
			WinActivate ahk_exe %Ini_Exe_14%
		}
Return

;Prog15
Hotkey_15:
	If !WinExist("ahk_exe "Ini_Exe_15) ;Without Percent Sigh
		{
			Run, %Ini_Path_15%
		}
	Else
		{
			WinActivate ahk_exe %Ini_Exe_15%
		}
Return

;Prog16
Hotkey_16:
	If !WinExist("ahk_exe "Ini_Exe_16) ;Without Percent Sigh
		{
			Run, %Ini_Path_16%
		}
	Else
		{
			WinActivate ahk_exe %Ini_Exe_16%
		}
Return

;Prog17
Hotkey_17:
	If !WinExist("ahk_exe "Ini_Exe_17) ;Without Percent Sigh
		{
			Run, %Ini_Path_17%
		}
	Else
		{
			WinActivate ahk_exe %Ini_Exe_17%
		}
Return

;Prog18
Hotkey_18:
	If !WinExist("ahk_exe "Ini_Exe_18) ;Without Percent Sigh
		{
			Run, %Ini_Path_18%
		}
	Else
		{
			WinActivate ahk_exe %Ini_Exe_18%
		}
Return

;Prog19
Hotkey_19:
	If !WinExist("ahk_exe "Ini_Exe_19) ;Without Percent Sigh
		{
			Run, %Ini_Path_19%
		}
	Else
		{
			WinActivate ahk_exe %Ini_Exe_19%
		}
Return

;Prog20
Hotkey_20:
	If !WinExist("ahk_exe "Ini_Exe_20) ;Without Percent Sigh
		{
			Run, %Ini_Path_20%
		}
	Else
		{
			WinActivate ahk_exe %Ini_Exe_20%
		}
Return

;Prog21
Hotkey_21:
	If !WinExist("ahk_exe "Ini_Exe_21) ;Without Percent Sigh
		{
			Run, %Ini_Path_21%
		}
	Else
		{
			WinActivate ahk_exe %Ini_Exe_21%
		}
Return

;Prog22
Hotkey_22:
	If !WinExist("ahk_exe "Ini_Exe_22) ;Without Percent Sigh
		{
			Run, %Ini_Path_22%
		}
	Else
		{
			WinActivate ahk_exe %Ini_Exe_22%
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
^Numpad2::listvars
^Numpad3::MsgBox, %Ini_Modifier_Hotkey%
Return