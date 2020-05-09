#space::
Loop, 15
{
Send Bois de l'eau!
Send {Enter}
Sleep 10
}


n::
    StartTime := A_TickCount
    While(!GetKeyState("a", "P"))
        continue
    Send % A_TickCount - StartTime
	While(GetKeyState("a", "P"))
        continue
	Send n
return

a:: 
Send {space}
return 