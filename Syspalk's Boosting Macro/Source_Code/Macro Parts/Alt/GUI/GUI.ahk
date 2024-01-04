menu,tray,icon,Source_Code\Macro Parts\General\logo.ico
Gui,color,0x2A2F32
Gui,Font,s17 Bold Underline
Gui,Add,Text, x120 cwhite ,Alt Macro
Gui,Font,s10 norm Bold
global infocol := "53ede5"

Gui,Add,DropDownList, x20 y70 w90 h200 vfarmpattern,%farmpattern%||None|zigzag|squares|zigzag++
Gui,Add,Text, xp+15 yp-20 cwhite,Pattern                               Size
Gui,Add,Slider, Left ToolTip xp+115 yp+15 range0-100 vpatternsize,%patternsize%
Gui,Add,Text, xp+160 yp+10 w10 h17 c%infocol%,?
Gui,Add,Radio,yp+35 x20 cwhite %sprinkleralign% vsprinkleralign,Align to sprinkler
Gui,Add,Radio,yp+20 x20 cwhite %plantalign% vplantalign,Align to planter
Gui,Add,Checkbox,yp+25 x20 cwhite %usemicros% vusemicros,Use micro converter when full bag.

Gui,Add,Groupbox,x25 yp+30 w300 h130 cwhite,Materials
loop 3{
	toggle := toggle%A_Index%
	timer := timer%A_Index%
	key := key%A_Index%

	Gui, Add, Checkbox, x35 yp+34 cred %toggle% vtoggle%A_Index%,Hotbar slot %A_Index%
	Gui, Add,Edit,number xp+120 yp-3 w100 h20 vtimer%A_Index% ,%timer%
	Gui, Add,Edit,limit1 xp+120 yp w20 h20 vkey%A_Index% ,%key%
}
Gui,Add,Text,yp-82 xp-115 cblue,Delays (ms)    Hotkeys
Gui,Add,Button,x205 y115,Command mats

Gui,Font, s11
Gui,Add,Text,y325 x15 cwhite,START: F1            STOP: F2            PAUSE: F3
Gui,Show, w350 h355,Syspalk's Boost macro %version%

loadcommandmats()
{
	Gui, command:color,0x2A2F32
	Gui, command:Font,s10 Bold

	Gui, command:add,groupbox, x20 y20 w130 h90 cwhite, Hotkeys
	Gui, command:add,Text,x30 y40 cred,Gumdrops
	Gui, command:add,Edit,limit1 xp+90 yp-3 w20 h20 vgumdropkey,%gumdropkey%
	Gui, command:add,Text,x30 yp+25 cred,Jelly Beans
	Gui, command:add,Edit,limit1 xp+90 yp-3 w20 h20 vjbkey,%jbkey%
	Gui, command:add,Text,x30 yp+25 cred,Cloud vial
	Gui, command:add,Edit,limit1 xp+90 yp-3 w20 h20 vcloudkey,%cloudkey%

	Gui, command:add,groupbox, x20 yp+40 w340 h175 cwhite,Options
	Gui, command:add,Checkbox, x30 yp+25 cwhite %commandgumdrop% vcommandgumdrop,Use gumdrops upon receiving command.
	Gui, command:add,Text, x30 yp+25 cwhite,Use gumdrops for
	Gui, command:add,Edit, xp+130 yp w50 h20 vgumdroptime,%gumdroptime%
	Gui, command:add,Text, xp+55 yp cwhite,Seconds
	Gui, command:add,Checkbox, x30 yp+35 cwhite %commandjb% vcommandjb,Use Jelly beans upon receiving command.
	Gui, command:add,Checkbox, x30 yp+35 cwhite %commandcloud% vcommandcloud,Use a cloud upon receiving command.
	Gui, command:add,Text, x30 yp+25 cwhite,Use a cloud every
	Gui, command:add,Edit, xp+130 yp w50 h20 vcloudtime,%cloudtime%
	Gui, command:add,Text, xp+55 yp cwhite,commands.

	Gui, command:show,,Command mats
}