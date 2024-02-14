zigzag(size){ ;for some reason people call this snake even though snakes don't even move in this pattern in real life unless they are mentally insane
	size := size*8
	if (size < 80){
		sleep 5000
		return
	}
	short := size/6
	loop 2{
		walk(size,"f")
		walk(short,"r")
		walk(size,"b")
		walk(short,"r")
	}loop 2{
		walk(size,"f")
		walk(short,"l")
		walk(size,"b")
		walk(short,"l")
	}
}

zigzagpp(size){ ;this thing is the same as zigzag but better for token collectoin cause it moves to the part on the path where you haven't been for the longest amount of time
	size := size*8
	if (size < 80){
		sleep 5000
		return
	}
	sidewayssize := size/5
	returnsize := sidewayssize*4
	sidewayssizez := sidewayssize*0.8
	loop 2{
		walk(sidewayssizez,"r")
		walk(size,"f")
		walk(sidewayssize,"r")
		walk(size,"b")
	}
	walk(returnsize,"l")
	walk(size,"f")
	loop 2{
		walk(sidewayssize,"r")
		walk(size,"b")
		walk(sidewayssize,"r")
		walk(size,"f")
	}
	walk(returnsize,"l")
	walk(size,"b")
}

squares(size){ ;idk why anyone would use this but look it's coded pretty nicely
	size := size*3
	if (size < 15){
		sleep 5000
		return
	}
	x := size
	loop 3{
		walk(size,"f")
		walk(size,"r")
		walk(size,"b")
		walk(size,"l")
		size := size + x
	}
}

spideralt(size)
{
	loop 15
	{
		walk(150,"f")
		walk(100,"l")
	}
	walk(1500,"b")
	walk(1000,"r")
	zigzagpp(size)
	zigzagpp(size)
	zigzagpp(size)
	walk(400,"f")
}

pattern(){ ;function that calls a function yes i know i went too far with the function spamming
	ReadGui()
	Send {Click Left Down}
	if (farmpattern = "zigzag"){
		zigzag(patternsize)
	}else if (farmpattern = "squares"){
		squares(patternsize)
	}else if (farmpattern = "zigzag++"){
		zigzagpp(patternsize)
	}else if (farmpattern = "spiderpoli"){
		spideralt(patternsize)
	}
	Send {Click Left UP}
	return
}