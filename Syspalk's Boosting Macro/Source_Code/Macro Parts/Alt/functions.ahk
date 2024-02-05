walk(time,dir) ;makes the character do walking and stuff like that.
{
    switch dir ;switch to convert direction into a key
    {
        Case "f": key := "w"
        Case "l": key := "a"
        Case "b": key := "s"
        Case "r": key := "d"
    }
	
    send {%key% Down}
    sleep %time%
    Send {%key% Up}
}

walkhold(dir,setting){ ;basically just the same as keydown but without a keyup after.
	switch dir ;switch to convert direction into a key
    {
        Case "f": key := "w"
        Case "l": key := "a"
        Case "b": key := "s"
        Case "r": key := "d"
    }
	
    Send {%key% %setting%}
}

align()
{
    ReadGui()
    if (sprinkleralign)
    {
        sprinkleralign()
        return
    }
    if (plantalign)
    {
        planteralign()
        return
    }
}

sprinkleralign()
{
    WinGetPos,,,Winwidth,Winheight,Roblox
	Top := WinHeight / 2.2
	Bottom := WinHeight / 1.8
	Leftt := Winwidth / 2.2
	Rightt := Winwidth / 1.8

	if (satsearcher(0,0,Winwidth,Top) = 0){
		walkhold("f","Down")
		satstarttime := A_TickCount
		while (A_TickCount - satstarttime < 2000){
			if (satsearcher(0,0,Winwidth,Top) = 1){
				break
			}
			sleep 10
		}
		walkhold("f","Up")
	}
	else if (satsearcher(0,Bottom,Winwidth,WinHeight) = 0){
		walkhold("b","Down")
		satstarttime := A_TickCount
		while (A_TickCount - satstarttime < 2000){
			if (satsearcher(0,Bottom,Winwidth,WinHeight) = 1){
				break
			}
			sleep 10
		}
		walkhold("b","Up")
	}
	
	if (satsearcher(0,0,Leftt,Winheight) = 0){
		walkhold("l","Down")
		satstarttime := A_TickCount
		while (A_TickCount - satstarttime < 2000){
			if (satsearcher(0,0,Leftt,Winheight) = 1){
				break
			}
			sleep 10
		}
		walkhold("l","Up")
	}
	else if (satsearcher(Rightt,0,WinWidth,Winheight) = 0){
		walkhold("r","Down")
		satstarttime := A_TickCount
		while (A_TickCount - satstarttime < 2000){
			if (satsearcher(Rightt,0,WinWidth,Winheight) = 1){
				break
			}
			sleep 10
		}
		walkhold("r","Up")
	}
}

satsearcher(x1,y1,x2,y2)
{
	if (SearchFunctionv2("sprinkler1.png",0,x1,y1,x2,y2)[1] = 0)
    {
		return 0
	}
	else if (SearchFunctionv2("sprinkler2.png",0,x1,y1,x2,y2)[1] = 0)
    {
		return 0
	}
	else if (SearchFunctionv2("sprinkler3.png",0,x1,y1,x2,y2)[1] = 0)
    {
		return 0
	}
	else if (SearchFunctionv2("sprinkler4.png",0,x1,y1,x2,y2)[1] = 0)
    {
		return 0
	}
    else if (SearchFunctionv2("sprinkler5.png",0,x1,y1,x2,y2)[1] = 0)
    {
        return 0
    }
	else{
		return 1
	}
}

planteralign()
{
    WinGetPos,,,Winwidth,Winheight,Roblox
	Top := WinHeight / 2.2
	Bottom := WinHeight / 1.8
	Leftt := Winwidth / 2.2
	Rightt := Winwidth / 1.8
    image := "planter.png"

    if (SearchFunctionv2(image,10,0,0,Winwidth,Top)[1] = 0){
		walkhold("f","Down")
		satstarttime := A_TickCount
		while (A_TickCount - satstarttime < 2000){
			if (SearchFunctionv2(image,10,0,0,Winwidth,Top)[1] = 1){
				break
			}
			sleep 10
		}
		walkhold("f","Up")
	}
	else if (SearchFunctionv2(image,10,0,Bottom,Winwidth,WinHeight)[1] = 0){
		walkhold("b","Down")
		satstarttime := A_TickCount
		while (A_TickCount - satstarttime < 2000){
			if (SearchFunctionv2(image,10,0,Bottom,Winwidth,WinHeight)[1] = 1){
				break
			}
			sleep 10
		}
		walkhold("b","Up")
	}
	
	if (SearchFunctionv2(image,10,0,0,Leftt,Winheight)[1] = 0){
		walkhold("l","Down")
		satstarttime := A_TickCount
		while (A_TickCount - satstarttime < 2000){
			if (SearchFunctionv2(image,10,0,0,Leftt,Winheight)[1] = 1){
				break
			}
			sleep 10
		}
		walkhold("l","Up")
	}
	else if (SearchFunctionv2(image,10,Rightt,0,WinWidth,Winheight)[1] = 0){
		walkhold("r","Down")
		satstarttime := A_TickCount
		while (A_TickCount - satstarttime < 2000){
			if (SearchFunctionv2(image,10,Rightt,0,WinWidth,Winheight)[1] = 1){
				break
			}
			sleep 10
		}
		walkhold("r","Up")
	}

}

SearchFunctionv2(image,variation,x1,y1,x2,y2)
{
	ImageSearch, FoundX, FoundY, %x1%, %y1%, %x2%, %y2%, *%variation% Source_Code\Macro Parts\Alt\images\%image%
	return [ErrorLevel,FoundX,FoundY]
}

bagcheck()
{
	if (SpecificPixelSearchFunction(0x1700F7,0,0,A_ScreenWidth,150)[1] = 0){
		return true
	}
    return false
}

SpecificPixelSearchFunction(color,x1,y1,x2,y2)
{
	PixelSearch, FoundX, FoundY,%x1%,%y1%,%x2%,%y2%,%color%,,fast
	return [ErrorLevel,FoundX,FoundY]
}

checkbag()
{
    ReadGui()
    if not (usemicros)
    {
        return
    }
    if (microkey = "")
    {
        return
    }
    if (bagcheck() = true)
    {
        Send %microkey%
    }
}

ReleaseAllKeys()
{
    walkhold("f","Up")
    walkhold("l","Up")
    walkhold("b","Up")
    walkhold("r","Up")
}

checkcommands()
{
    if (SearchFunctionv2("command.png",25,0,0,A_ScreenWidth,A_ScreenHeight)[1] = 0)
    {
        return true
    }
    return false
}

checkstartcommand()
{
    if (SearchFunctionv2("startcommand.png",25,0,0,A_ScreenWidth,A_ScreenHeight)[1] = 0)
    {
        return true
    }
    return false
}

checkstopcommand()
{
    if (SearchFunctionv2("stopcommand.png",25,0,0,A_ScreenWidth,A_ScreenHeight)[1] = 0)
    {
        return true
    }
    return false
}

checkifhavetostop()
{
	GuiControlGet,allowcommands,,allowcommands
    if (allowcommands)
    {
        if (checkstopcommand() = true)
        {
            Chatsend("DISARMED")
			chatflood()
			SaveData()
            ExitApp
        }
    }
}

usecommandmats()
{
    ReadData()
    if (commandjb)
    {
        Send %jbkey%
		Send {Shift}
		sleep 3000
		Send {Shift}
		sleep 100
    }

    if (commandcloud)
    {
        if (cloudtime <= cloudtimer)
        {
            Send %cloudkey%
            global cloudtimer := 1
        }
        else
        {
            global cloudtimer := cloudtimer + 1
        }
    }
}

chatflood()
{
    loop 15
    {
        Send {ASC 47}
        sleep 66
        SendInput /w 🎶zyzpalkiuzzzzzzz🎶
        sleep 66
        SendInput {Enter}
        sleep 66
    }
}

Chatsend(text)
{
    Send {ASC 47}
    sleep 100
    SendInput %text%
    sleep 25
    SendInput {Enter}
}

StartGumdropTimer()
{
    Settimer,UseGumdrop,250
}

StopGumdropTimer()
{
    Settimer,UseGumdrop,Off
}

UseGumdrop()
{
    ReadData()
    Send %gumdropkey%
}

createshortcut(){
	shortcutpath := A_Desktop . "\Alt.lnk"
	launcherpath := A_WorkingDir . "\Launch_Alt.bat"
	iconpath := A_WorkingDir . "\Source_Code\Macro Parts\General\logo.ico"
	FileCreateShortcut,%launcherpath%,%shortcutpath%,%A_WorkingDir%,,,%iconpath%
}