#XButton1::
{
MouseGetPos, MouseX, MouseY
PixelGetColor, color, %MouseX%, %MouseY%
MsgBox The color at X%MouseX% Y%MouseY% is %color%.
return
}

b::
{
x := 732
y := 420
return
}

Xbutton1::
{
--x
return
}

!Xbutton1::
{
++x
return
}

Xbutton2::
{
--y
return
}

!Xbutton2::
{
++y
return
}


MButton::
{
MouseMove, x, y
return
}

n::
{
MsgBox %x% %y%
return
}

;977 386