Global filepath := "Source_Code/Macro Parts/Main/GUI/info"

keyinfo()
{
    FileRead,text,%filepath%/keyinfo.txt
    popup(400,160,12,"command info",text)
}

ButtonList()
{
    FileRead,text,%filepath%/Recommendedkeys.txt
    popup(400,310,12,"command info",text)
}