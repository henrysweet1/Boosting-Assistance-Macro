#SingleInstance Force
#Requires AutoHotkey v1.1.36.01+
SetBatchLines, -1
SetDefaultMouseSpeed, 3
ListLines Off
Fileread,version,Source_Code\Macro Parts\General\version.txt
#Include Source_Code/Macro parts/Alt/data handler.ahk
ReadData()
#Include Source_Code/Macro parts/Alt/GUI/Buttons.ahk
#Include Source_Code/Macro Parts/Alt/GUI/GUI.ahk



F1::
while (1)
{

}

GuiClose:
SaveData()
ExitApp

F2::
SaveData()
Reload

F3::Pause