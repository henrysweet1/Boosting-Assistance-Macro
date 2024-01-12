Global infopath := "Source_Code/Macro Parts/Main/GUI/info"

keyinfo()
{
    FileRead,text,%infopath%/keyinfo.txt
    popup(400,160,12,"command info",text)
}

ButtonList()
{
    FileRead,text,%infopath%/Recommendedkeys.txt
    popup(400,310,12,"List",text)
}