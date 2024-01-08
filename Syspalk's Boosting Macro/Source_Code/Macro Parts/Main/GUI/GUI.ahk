menu,tray,icon,Source_Code\Macro Parts\General\logo.ico
Gui,color,0x2A2F32
Gui,Font,s17 Bold Underline
Gui,Add,Text, x107 cwhite ,Main Macro
Gui,Font,s10 norm Bold

Gui,Add,Text, x25 yp+50 cwhite,Command hotkey:
Gui,Add,Edit, xp+130 yp w100 h20 vcommandkey,%commandkey%
Gui,Add,Groupbox,x25 yp+40 w300 h250 cwhite,Materials
loop 7{
	toggle := toggle%A_Index%
	timer := timer%A_Index%
	key := key%A_Index%

	Gui, Add, Checkbox, x35 yp+34 cred %toggle% vtoggle%A_Index%,Hotbar slot %A_Index%
	Gui, Add,Edit,number xp+120 yp-3 w100 h20 vtimer%A_Index% ,%timer%
	Gui, Add,Edit,limit1 xp+120 yp w20 h20 vkey%A_Index% ,%key%
}

Gui,Font, s11
Gui,Add,Text,y370 x15 cwhite,START: F1            STOP: F2            PAUSE: F3
Gui,Show, w350 h400,Syspalk's Boost macro %version%