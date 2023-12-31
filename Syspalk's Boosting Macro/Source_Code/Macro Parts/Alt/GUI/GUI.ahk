menu,tray,icon,Source_Code\Macro Parts\General\logo.ico
Gui,color,0x2A2F32
Gui,Font,s17 Bold Underline
Gui,Add,Text, x120 cwhite ,Alt Macro
Gui,Font,s10 norm Bold
global infocol := "53ede5"

Gui,Add,DropDownList, x20 y80 w90 h200,%farmpattern%||None|zigzag|squares|zigzag++
Gui,Add,Text, xp+15 yp-20 cwhite,Pattern                               Size
Gui,Add,Slider, Left ToolTip xp+115 yp+15 range0-100,%patternsize%
Gui,Add,Text, xp+160 yp+10 w10 h17 c%infocol%,?
Gui,Add,Radio,yp+35 x20 cwhite,Align to sprinkler
Gui,Add,Radio,yp+20 x20 cwhite,Align to planter

Gui,Add,Groupbox,x10 yp+30 w300 h190 cwhite,Materials
loop 5{
	Gui, Add, Checkbox, x20 yp+34 cred %toggle% vtoggle%A_Index%,Hotbar slot %A_Index%
	Gui, Add,Edit,number xp+120 yp-3 w100 h20 vtimer%A_Index% ,%timer%
	Gui, Add,Edit,limit1 xp+120 yp w20 h20 vkey%A_Index% ,%key%
}
Gui, Add,Text,yp-140 xp-115 cblue,Delays (ms)     Hotkeys

Gui, Font, s11
Gui, Add,Text,y370 x15 cwhite,START: F1            STOP: F2            PAUSE: F3

Gui,Show, w350 h400,Syspalk's Boost macro %version%