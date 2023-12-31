#SingleInstance Force
#Requires AutoHotkey v1.1.36.01+
SetBatchLines, -1
SetDefaultMouseSpeed, 3
ListLines Off
Fileread,version,Source_Code\Macro Parts\General\version.txt
#Include Source_Code/Macro Parts/Main/GUI/GUI.ahk