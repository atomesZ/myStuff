n::
StartTime := A_TickCount
OnStone := 0
FileAppend, 
(
n:: `n
), D:\Wakfu_Bot_Path\wakfarm.ahk ; C:\Users\Etienne Sharpin\Documents\AHK\wakfarme.ahk
return 

$LButton::
Send {LButton}
MouseGetPos, MouseX, MouseY
baba := A_TickCount - StartTime
FileAppend, 
(
Sleep %baba%
MouseClick, left, %MouseX%, %MouseY% `n
), D:\Wakfu_Bot_Path\wakfarm.ahk ; C:\Users\Etienne Sharpin\Documents\AHK\wakfarme.ahk
StartTime := A_TickCount
if (OnStone)
{
FileAppend, 
(
} `n
), D:\Wakfu_Bot_Path\wakfarm.ahk ; C:\Users\Etienne Sharpin\Documents\AHK\wakfarme.ahk
OnStone := 0
}
return 

$RButton::
Send {RButton}
MouseGetPos, MouseX, MouseY
baba := A_TickCount - StartTime
FileAppend, 
(
if (color = 0x3926B2 || color1 = 0x3D2E8B || color2 = 0x2D2174)
{ 
Sleep %baba%
MouseClick, right, %MouseX%, %MouseY% `n
), D:\Wakfu_Bot_Path\wakfarm.ahk ; C:\Users\Etienne Sharpin\Documents\AHK\wakfarme.ahk
StartTime := A_TickCount
OnStone := 1
return 

p::
FileAppend, 
(
PixelGetColor, color, 990, 567
PixelGetColor, color1, 988, 569
PixelGetColor, color2, 939, 562 `n
), D:\Wakfu_Bot_Path\wakfarm.ahk ; C:\Users\Etienne Sharpin\Documents\AHK\wakfarme.ahk
return 

Esc::
FileAppend, 
(
Send n
return 

Esc::
Process, Close, wakfarm.exe
return 
`n
), D:\Wakfu_Bot_Path\wakfarm.ahk ; C:\Users\Etienne Sharpin\Documents\AHK\wakfarme.ahk
Process, Close, wakfuMouseListener.exe
return 



