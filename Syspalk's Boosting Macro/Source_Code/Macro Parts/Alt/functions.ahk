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