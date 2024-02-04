checkkeys()
{
    sleep 5
    loop 7{
        GuiControlGet,toggle%A_Index%
        GuiControlGet,timer%A_Index%
        GuiControlGet,key%A_Index%
        toggle := toggle%A_Index%
        timer := timer%A_Index%
        key := key%A_Index%
        if (toggle && A_TickCount - toggle%A_Index%timer > timer){
            toggle%A_Index%timer := A_TickCount
            Send %key%
        }
    }
}

createhotkey()
{
    GuiControlGet,commandkey
    try
    {
        Hotkey,%commandkey%,SendCommand
    }
    catch
    {
        Msgbox,INVALID COMMAND HOTKEY!
    }
}

createstartkey()
{
    GuiControlGet,startkey
    try
    {
        Hotkey,%startkey%,StartCommand
    }
    catch
    {
        Msgbox,INVALID START HOTKEY!
    }
}

createstopkey()
{
    GuiControlGet,stopkey
    try
    {
        Hotkey,%stopkey%,StopCommand
    }
    catch
    {
        Msgbox,INVALID STOP HOTKEY!
    }
}

SendCommand()
{
    Chatsend("VROOM 🚗")
}

StartCommand()
{
    Chatsend("START 😁😁")
}

StopCommand()
{
    Chatsend("STOP 😎")
}

Chatsend(text)
{
    Send /
    sleep 10
    SendInput %text%
    sleep 25
    SendInput {Enter}
}

createshortcut(){
	shortcutpath := A_Desktop . "\Main.lnk"
	launcherpath := A_WorkingDir . "\Launch_Main.bat"
	iconpath := A_WorkingDir . "\Source_Code\Macro Parts\General\logo.ico"
	FileCreateShortcut,%launcherpath%,%shortcutpath%,%A_WorkingDir%,,,%iconpath%
}