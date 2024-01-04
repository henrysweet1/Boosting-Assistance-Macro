﻿global farmpattern
global patternsize
global sprinkalign
global plantalign
global usemicros
global toggle1, toggle2, toggle3
global timer1, timer2, timer3
global key1, key2, key3

global gumdropkey
global jbkey
global cloudkey
global commandgumdrop
global gumdroptime
global commandjb
global commandcloud
global cloudtime

global filepath := "Source_Code\Macro_Parts\Alt\data\data.ini"

ReadData()
{
    IniRead,farmpattern,%filepath%,regular,farmpattern
    IniRead,patternsize,%filepath%,regular,patternsize
    IniRead,sprinkleralign,%filepath%,regular,sprinkleralign
    IniRead,plantalign,%filepath%,regular,plantalign
    IniRead,usemicros,%filepath%,regular,usemicros
    IniRead,toggle1,%filepath%,regular,toggle1
    IniRead,toggle2,%filepath%,regular,toggle2
    IniRead,toggle3,%filepath%,regular,toggle3
    IniRead,timer1,%filepath%,regular,timer1
    IniRead,timer2,%filepath%,regular,timer2
    IniRead,timer3,%filepath%,regular,timer3
    IniRead,key1,%filepath%,regular,key1
    IniRead,key2,%filepath%,regular,key2
    IniRead,key3,%filepath%,regular,key3

    IniRead,gumdropkey,%filepath%,regular,gumdropkey
    IniRead,jbkey,%filepath%,regular,jbkey
    IniRead,cloudkey,%filepath%,regular,cloudkey
    IniRead,commandgumdrop,%filepath%,regular,commandgumdrop
    IniRead,gumdroptime,%filepath%,regular,gumdroptime
    IniRead,commandjb,%filepath%,regular,commandjb
    IniRead,commandcloud,%filepath%,regular,commandcloud
    IniRead,cloudtime,%filepath%,regular,cloudtime
}


ReadGui()
{
    GuiControlGet,farmpattern,,farmpattern
    GuiControlGet,patternsize,,patternsize
    GuiControlGet,sprinkleralign,,sprinkleralign
    GuiControlGet,plantalign,,plantalign
    GuiControlGet,usemicros,,usemicros
    GuiControlGet,toggle1,,toggle1
    GuiControlGet,toggle2,,toggle2
    GuiControlGet,toggle3,,toggle3
    GuiControlGet,timer1,,timer1
    GuiControlGet,timer2,,timer2
    GuiControlGet,timer3,,timer3
    GuiControlGet,key1,,key1
    GuiControlGet,key2,,key2
    GuiControlGet,key3,,key3

    GuiControlGet,gumdropkey,,gumdropkey
    GuiControlGet,jbkey,,jbkey
    GuiControlGet,cloudkey,,cloudkey
    GuiControlGet,commandgumdrop,,commandgumdrop
    GuiControlGet,gumdroptime,,gumdroptime
    GuiControlGet,commandjb,,commandjb
    GuiControlGet,commandcloud,,commandcloud
    GuiControlGet,cloudtime,,cloudtime
}

SaveData()
{
    ReadGui()

    IniWrite,%farmpattern%,%filepath%,regular,farmpattern
    IniWrite,%patternsize%,%filepath%,regular,patternsize
    IniWrite,%sprinkleralign%,%filepath%,regular,sprinkleralign
    IniWrite,%plantalign%,%filepath%,regular,plantalign
    IniWrite,%usemicros%,%filepath%,regular,usemicros
    IniWrite,%toggle1%,%filepath%,regular,toggle1
    IniWrite,%toggle2%,%filepath%,regular,toggle2
    IniWrite,%toggle3%,%filepath%,regular,toggle3
    IniWrite,%timer1%,%filepath%,regular,timer1
    IniWrite,%timer2%,%filepath%,regular,timer2
    IniWrite,%timer3%,%filepath%,regular,timer3
    IniWrite,%key1%,%filepath%,regular,key1
    IniWrite,%key2%,%filepath%,regular,key2
    IniWrite,%key3%,%filepath%,regular,key3

    IniWrite,%gumdropkey%,%filepath%,regular,gumdropkey
    IniWrite,%jbkey%,%filepath%,regular,jbkey
    IniWrite,%cloudkey%,%filepath%,regular,cloudkey
    IniWrite,%commandgumdrop%,%filepath%,regular,commandgumdrop
    IniWrite,%gumdroptime%,%filepath%,regular,gumdroptime
    IniWrite,%commandjb%,%filepath%,regular,commandjb
    IniWrite,%commandcloud%,%filepath%,regular,commandcloud
    IniWrite,%cloudtime%,%filepath%,regular,cloudtime
}