menu,tray,icon,Source_Code\Macro Parts\General\logo.ico
Gui,color,0x2A2F32
Gui,Font,s17 Bold Underline
Gui,Add,Text, x120 cwhite ,Alt Macro
Gui,Font,s10 Bold
Gui,Add,Link, x127 yp+30 ,<a href="https://discord.gg/t572FnTqfs">Join Discord</a>
Gui,Font,s10 norm Bold
global infocol := "53ede5"

Gui,Add,DropDownList, x20 yp+40 w90 h200 vfarmpattern,%farmpattern%||None|zigzag|squares|zigzag++|spiderpoli
Gui,Add,Text, xp+15 yp-20 cwhite,Pattern                               Size
Gui,Add,Slider, Left ToolTip xp+115 yp+15 range0-100 vpatternsize,%patternsize%
Gui,Add,Text, xp+160 yp+10 w10 h17 c%infocol% gpatterninfo,?
Gui,Add,checkbox,yp+35 x20 cwhite %sprinkleralign% vsprinkleralign,Align to sprinkler
Gui,Add,checkbox,yp+20 x20 cwhite %plantalign% vplantalign,Align to planter
Gui,Add,Checkbox,yp+25 x20 cwhite %usemicros% vusemicros,Use micro converter when full bag.
Gui,Add,Text, xp yp+25 cwhite,Micro hotkey:
Gui,Add,Edit,limit1 xp+100 yp w20 h20 vmicrokey,%microkey%
Gui,Add,Checkbox,yp+30 x20 cwhite %allowcommands% vallowcommands,Allow macro to be controlled remotely

Gui,Add,Groupbox,x25 yp+30 w300 h135 cwhite,Materials
loop 3{
	toggle := toggle%A_Index%
	timer := timer%A_Index%
	key := key%A_Index%
	offset := offset%A_Index%
	if (A_Index = 1)
	{
		Gui, Add, Checkbox, x50 yp+40 cred %toggle% vtoggle%A_Index%,
		Gui, Add,Edit,number xp+40 yp-3 w100 h20 vtimer%A_Index% ,%timer%
		Gui, Add,Edit,limit1 xp+120 yp w20 h20 vkey%A_Index% ,%key%
		Gui, Add,Edit,number xp+40 yp-3 w60 h20 voffset%A_Index% ,%offset%
	}
	else
	{
		Gui, Add, Checkbox, x50 yp+34 cred %toggle% vtoggle%A_Index%,
		Gui, Add,Edit,number xp+40 yp-3 w100 h20 vtimer%A_Index% ,%timer%
		Gui, Add,Edit,limit1 xp+120 yp w20 h20 vkey%A_Index% ,%key%
		Gui, Add,Edit,number xp+40 yp w60 h20 voffset%A_Index% ,%offset%
	}
}
Gui,Add,Text,yp-80 x30 cblue,Toggle    Delays (ms)    Hotkey   Offset(S)
Gui,Add,Button,x205 y130,Command mats

Gui,Font, s11 Underline
Gui,Add,Text,y395 x15 c53ede5 gstart,START: F1
Gui,Add,Text,y395 x140 c53ede5 gstop,STOP: F2
Gui,Add,Text,y395 x255 c53ede5 gpausee,PAUSE: F3

Gui,Font, s11 norm bold
Gui,Add,Text, x170 y135 w10 h17 c%infocol% galigninfo,?
Gui,Add,Text, x290 y170 w10 h17 c%infocol% gmicroinfo,?
Gui,Add,Text, x310 y365 w10 h17 c%infocol% gmaterialinfo,?
Gui,Add,Text, x315 y223 w10 h17 c%infocol% gremoteinfo,?

Gui,Show, w350 h420,Syspalk's Boost macro %version%

loadcommandmats()
{
	global loadedcommandgui := true
	Gui, command:destroy
	Gui, command:color,0x2A2F32
	Gui, command:Font,s10 Bold

	Gui, command:add,groupbox, x20 y20 w145 h90 cwhite, Hotkeys
	Gui, command:add,Text,x30 y40 cred,Gumdrops
	Gui, command:add,Edit,limit1 xp+90 yp-3 w20 h20 gReadCommandGui vgumdropkey,%gumdropkey%
	Gui, command:add,Text,x30 yp+25 cred,Jelly Beans
	Gui, command:add,Edit,limit1 xp+90 yp-3 w20 h20 gReadCommandGui vjbkey,%jbkey%
	Gui, command:add,Text,x30 yp+25 cred,Cloud vial
	Gui, command:add,Edit,limit1 xp+90 yp-3 w20 h20 gReadCommandGui vcloudkey,%cloudkey%

	Gui, command:add,groupbox, x20 yp+40 w340 h155 cwhite,Options
	Gui, command:add,Checkbox, x30 yp+25 cwhite %commandgumdrop% gReadCommandGui vcommandgumdrop,Use gumdrops upon receiving command.
	Gui, command:add,Checkbox, x30 yp+35 cwhite %commandjb% gReadCommandGui vcommandjb,Use Jelly beans upon receiving command.
	Gui, command:add,Checkbox, x30 yp+35 cwhite %commandcloud% gReadCommandGui vcommandcloud,Use a cloud upon receiving command.
	Gui, command:add,Text, x30 yp+25 cwhite,Use a cloud every
	Gui, command:add,Edit, xp+130 yp w50 h20 gReadCommandGui vcloudtime,%cloudtime%
	Gui, command:add,Text, xp+55 yp cwhite,commands.

	Gui, command:Add,Text, x150 y35 w10 h17 c%infocol% ghotkeyinfo,?
	Gui, command:Add,Text, x345 y135 w10 h17 c%infocol% gcommandinfo,?

	Gui, command:show,,Command mats
}

popup(SizeX,SizeY,FontSize,Title,Text){
	Textloc := SizeX-20
	borderheight := SizeY + 7
	Gui, popup:Destroy
	Gui, popup:Add,groupbox,x0 y-7 w%SizeX% h%borderheight%
	Gui, popup:color,0x2A2F32
	Gui, popup:Font,s%FontSize%,Segoe UI
	Gui, popup:Add,Text, +wrap x10 y5 w%Textloc% cwhite,%Text%
	Gui, popup:Show, w%SizeX% h%SizeY%,%Title%
}