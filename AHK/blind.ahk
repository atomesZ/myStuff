InputBox, UserInput, Blind pick is ez, enter your role (no injection plz)

MButton:: 
{
while GetKeyState("MButton", "P")
{
	Send {LButton}
	Send %UserInput%
	Send {Enter}
	Sleep 500	
}
}

#Esc::
Process, Close, blind.exe
return