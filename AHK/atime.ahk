getDigit2()
{
PixelGetColor, color, 344, 858
if (color = 0x99F7FF)
{

	PixelGetColor, color, 344, 861
	if (color = 0x99F7FF)
	{
		PixelGetColor, color, 342, 861
		
		if (color = 0x99F7FF)
		{
			v := 2 ;2 
		}
		
		else 
		{
			v := 1 ;1
		}
	}

	else 
	{
		PixelGetColor, color, 343, 851
		if (color = 0x99F7FF)
		{
			v := 7 ;7 
		}
		else
		{
			v := 4 ;4
		}
	}
}

else 
{
	PixelGetColor, color, 341, 858
	if (color = 0x99F7FF)
	{
		PixelGetColor, color, 341, 856
		if (color = 0x99F7FF)
		{
			PixelGetColor, color, 344, 855
			if (color = 0x99F7FF) 
			{
				v := 6 ;6 
			}
			else 
			{
				v := 0 ;0
			}
		}
		else ;8
		{
			v := 8
		}
	}

	else
	{
		PixelGetColor, color, 346, 851
		if (color = 0x99F7FF)
		{
			PixelGetColor, color, 342, 854
			if (color = 0x99F7FF) 
			{
				v := 5 ; 5
			}
			else 
			{
				v := 3 ;3
			}
		}
		else 
		{
			v := 9 ;9
		}
	}
}

return v
}

getDigit1()
{
PixelGetColor, color, 331, 858
if (color = 0x99F7FF)
{

	PixelGetColor, color, 331, 861
	if (color = 0x99F7FF)
	{
		PixelGetColor, color, 329, 861
		
		if (color = 0x99F7FF)
		{
			v := 2 ;2 
		}
		
		else 
		{
			v := 1 ;1
		}
	}

	else 
	{
		PixelGetColor, color, 330, 851
		if (color = 0x99F7FF)
		{
			v := 7 ;7 
		}
		else
		{
			v := 4 ;4
		}
	}
}

else 
{
	PixelGetColor, color, 328, 858
	if (color = 0x99F7FF)
	{
		PixelGetColor, color, 328, 856
		if (color = 0x99F7FF)
		{
			PixelGetColor, color, 331, 855
			if (color = 0x99F7FF) 
			{
				v := 6 ;6 
			}
			else 
			{
				v := 0 ;0
			}
		}
		else ;8
		{
			v := 8
		}
	}

	else
	{
		PixelGetColor, color, 333, 851
		if (color = 0x99F7FF)
		{
			PixelGetColor, color, 329, 854
			if (color = 0x99F7FF) 
			{
				v := 5 ; 5
			}
			else 
			{
				v := 3 ;3
			}
		}
		else 
		{
			v := 9 ;9
		}
	}
}

return v
}


XButton1:: 
{
ASbase := getDigit1() + getDigit2()/10
as := 1000 / ASbase 
Random, rand, 3, 8
while GetKeyState("XButton1", "P")
{	
	Send {XButton2}
	Sleep as * 0.2 + rand ;Sleep as2
	Send {RButton}
	StartTime := A_TickCount
	ASbase := getDigit1() + getDigit2()/10
	as := 1000 / ASbase 
	Random, rand, 3, 8
	babe := A_TickCount - StartTime
	Sleep as * 0.8 - (A_TickCount - StartTime) + rand ;Sleep as1
	FileAppend, 
	(
		%babe% `n
	), C:\Users\Etienne Sharpin\Documents\AHK\at.txt
	
}
return 
}



!XButton1:: 
{
MouseGetPos, zoneX, zoneY
lastX := 660
lastY := 400
cond := true
ASbase := getDigit1() + getDigit2()/10
as := 1000 / ASbase 
Random, rand, 3, 8
while cond
{	
	MouseMove, zoneX + rand, zoneY + rand - 3
	SendInput {XButton2}
	MouseMove, lastX, lastY
	Sleep as * 0.3 + rand + pingVariation
	StartTime := A_TickCount
	SendInput {RButton}
	ASbase := getDigit1() + getDigit2()/10
	as := 1000 / ASbase 
	Random, rand, 3, 12
	MouseGetPos, lastX, lastY
	Sleep as * 0.7 - (A_TickCount - StartTime) + rand + pingVariation
}
return 
}