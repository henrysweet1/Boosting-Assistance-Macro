StartTimers()
{
    StartTimer(1)
    StartTimer(2)
    StartTimer(3)
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
    Send %key1%
}

useitem2()
{
    Send %key2%
}

useitem3()
{
    Tooltip,lksdjf
    Send %key3%
}