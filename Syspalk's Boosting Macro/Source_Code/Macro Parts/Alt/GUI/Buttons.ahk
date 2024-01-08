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

}

microinfo()
{

}

materialinfo()
{
    
}