ButtonCommandMats()
{
    loadcommandmats()
}

global infopath := "Source_Code/Macro Parts/Alt/GUI/info"
patterninfo()
{
    FileRead, text,%infopath%/patterninfo.txt
    popup(400,180,12,"pattern info",text)
}

aligninfo()
{
    FileRead, text,%infopath%/aligninfo.txt
    popup(400,200,12,"align info",text)
}

microinfo()
{
    FileRead, text,%infopath%/microinfo.txt
    popup(400,140,12,"micro info",text)
}

materialinfo()
{
    FileRead, text,%infopath%/materialinfo.txt
    popup(400,200,12,"material info",text)
}

hotkeyinfo()
{
    FileRead, text,%infopath%/hotkeyinfo.txt
    popup(400,120,12,"hotkey info",text)
}

commandinfo()
{
    FileRead, text,%infopath%/commandinfo.txt
    popup(400,160,12,"command info",text)
}

remoteinfo()
{
    FileRead, text,%infopath%/remoteinfo.txt
    popup(400,200,12,"remotely controlled info",text)
}