﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Menu, Tray, icon, logo.ico

#IfWinActive
^!+v::
MsgBox, Autotyping from clipboard.
Loop, parse, clipboard
{
	TempChar := SubStr(clipboard, A_Index, 1)
	if TempChar != `n
	{
		SendRaw %TempChar%
		sleep 0.1
	}
}
return
#If