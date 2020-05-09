InputBox, UserInput, button to spam af, enter text to spam af

XButton1:: 
{
while GetKeyState("XButton1", "P")
{
	Send %UserInput%
	Sleep 10	
}
}