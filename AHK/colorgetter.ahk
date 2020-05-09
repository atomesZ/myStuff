^!z::   ; Control+Alt+Z hotkey.
MouseGetPos, MouseX, MouseY
PixelGetColor, color, %MouseX%, %MouseY%
MsgBox The color at X%MouseX% Y%MouseY% is %color%.
return


