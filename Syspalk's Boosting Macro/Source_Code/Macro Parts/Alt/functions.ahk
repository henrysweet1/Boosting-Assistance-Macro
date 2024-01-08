walk(time,dir) ;makes the character do walking and stuff like that.
{
    switch dir ;switch to convert direction into a key
    {
        Case "f": key := "z"
        Case "l": key := "q"
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
        Case "f": key := "z"
        Case "l": key := "q"
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

planteralign()
{

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
	else{
		return 1
	}
}


SearchFunctionv2(image,variation,x1,y1,x2,y2)
{
	ImageSearch, FoundX, FoundY, %x1%, %y1%, %x2%, %y2%, *%variation% Source_Code\Macro Parts\images\%image%
	return [ErrorLevel,FoundX,FoundY]
}