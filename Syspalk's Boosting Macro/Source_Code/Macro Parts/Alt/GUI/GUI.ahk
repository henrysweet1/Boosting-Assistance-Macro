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
    
Gui,Show, w350 h400,Syspalk's Boost macro %version%