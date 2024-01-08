#SingleInstance Force
#Requires AutoHotkey v1.1.36.01+
SetBatchLines, -1
SetDefaultMouseSpeed, 3
ListLines Off
Fileread,version,Source_Code\Macro Parts\General\version.txt
#Include Source_Code/Macro Parts/Main/data handler.ahk
#Include Source_Code/Macro Parts/Main/GUI/GUI.ahk
#Include Source_Code/Macro Parts/Main/functions.ahk



F1::
createhotkey()
while (1)
{
    checkkeys()
}

guiclose:
savedata()
ExitApp

F2::
savedata()
Reload
return

F3::Pause