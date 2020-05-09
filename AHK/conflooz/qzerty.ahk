inA := "a"
inQ := "q"

$a::
{
	Send %inQ%
	return
}

$q::
{
	Send %inA%
	return
}

^!z::   ; Control+Alt+Z hotkey.
{
	InputBox, UserInput, Javi de vous conflooz, Xavier est-il un fils de pute aguerri qui met des putains de chidori dans les tripes ?
	if UserInput = oui
	{
		inA := "q"
		inQ := "a"
	}
	
	else
	{
		MsgBox, Et bah ntm 
		inA := "a"
		inQ := "q"
	}
	return
}