#space::
a = 0
Send {f Down}
while a = 0
{
{
Sleep 200
Send {a Down}
Send {LButton}
Send {a Up}
Send {e down}
Send {LButton}
Send {e Up}
}
Sleep 150
}
return

#z::  
	a = 1
	Send {f Up}
return