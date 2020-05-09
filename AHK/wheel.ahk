XButton1::
{
while(GetKeyState("XButton1","P"))
{
	Send {WheelUp}
	Sleep 120
}
}return

XButton2::
{
while(GetKeyState("XButton2","P"))
{
	Send {WheelDown}
	Sleep 120
}
}