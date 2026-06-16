#Requires AutoHotkey v2.0

global PressTime := 0
global LastAllowedRelease := 0
global Holding := false

*MButton::
{
    global PressTime, LastAllowedRelease, Holding

    if (A_TickCount - LastAllowedRelease < 100)
        return

    PressTime := A_TickCount
    Holding := false

    SetTimer CheckMiddleHold, -100
}

CheckMiddleHold()
{
    global Holding

    if GetKeyState("MButton", "P")
    {
        Send "{MButton Down}"
        Holding := true
    }
}

*MButton Up::
{
    global Holding, LastAllowedRelease

    if Holding
    {
        Send "{MButton Up}"
        LastAllowedRelease := A_TickCount
        Holding := false
    }
}