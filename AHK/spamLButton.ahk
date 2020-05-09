XButton1::
while GetKeyState("XButton1", "P")
{
Send {LButton}
Sleep 2
}



Esc::
Process, Close, wakfarm.exe
return 
