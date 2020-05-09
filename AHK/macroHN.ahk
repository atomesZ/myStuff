#space::
{
	Run  https://patrickhlauke.github.io/recaptcha/
	Sleep 5042
	Loop, 3
	{
		MouseMove, 48, 235
		Send {LButton}
		MouseMove, 442, 442
		Sleep 3142
		Send {f5}
		Sleep 1234
	}
return
}