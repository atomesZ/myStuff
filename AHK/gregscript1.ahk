MButton:: 
while GetKeyState("MButton", "P")
{
MouseGetPos, MouseX, MouseY
PixelGetColor, color, %MouseX%, %MouseY%
if color = 0x6ADB4B
{
Send {LButton}
}
Sleep 2
}