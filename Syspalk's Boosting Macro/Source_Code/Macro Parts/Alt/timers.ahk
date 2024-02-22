CheckStartTimers()
{
    if (A_TickCount - macrostarttime >= offset1*1000 && timer1started = false)
    {
        global timer1started := true
        StartTimer(1)
    }

    if (A_TickCount - macrostarttime >= offset2*1000 && timer2started = false)
    {
        global timer2started := true
        StartTimer(2)
    }

    if (A_TickCount - macrostarttime >= offset3*1000 && timer3started = false)
    {
        global timer3started := true
        StartTimer(3)
    }
}

StartTimer(which)
{
    ReadGui()
    key := key%which%
    timer := timer%which%
    toggle := toggle%which%

    ;check for faulthy input
    if (toggle = false || key = "" || timer = "")
    {
        return
    }

    switch which
    {
        case 1: Settimer,useitem1,%timer%
        case 2: Settimer,useitem2,%timer%
        case 3: Settimer,useitem3,%timer%
    }
}

useitem1()
{
    if (useitems)
    {
        Send %key1%
    }
}

useitem2()
{
    if (useitems)
    {
        Send %key2%
    }
}

useitem3()
{
    if (useitems)
    {
        Send %key3%
    }
}