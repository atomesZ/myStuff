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
			v := 2
		}
		
		else 
		{
			v := 1
		}
	}

	else 
	{
		PixelGetColor, color, 343, 851
		if (color = 0x99F7FF)
		{
			v := 7
		}
		else
		{
			v := 4
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
				v := 6
			}
			else 
			{
				v := 0
			}
		}
		else
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
				v := 5
			}
			else 
			{
				v := 3
			}
		}
		else 
		{
			v := 9
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
			v := 2
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
			v := 7
		}
		else
		{
			v := 4
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
				v := 6 
			}
			else 
			{
				v := 0 
			}
		}
		else 
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
				v := 5 
			}
			else 
			{
				v := 3 
			}
		}
		else 
		{
			v := 9 
		}
	}
}

return v
}

cond := false

pingVariation := 0

#p::
{
InputBox, pingVariation, Ping Variation, enter your ping variation
return
}

$XButton2:: 
{
Send {XButton2}
cond := false
return
}


XButton1:: 
{
cond := true
ASbase := getDigit1() + getDigit2()/10
as := 1000 / ASbase 
Random, rand, 3, 8
while cond
{	
	SendInput {XButton2}
	Sleep as * 0.3 + rand + pingVariation
	StartTime := A_TickCount
	SendInput {RButton}
	ASbase := getDigit1() + getDigit2()/10
	as := 1000 / ASbase 
	Random, rand, 3, 12
	Sleep as * 0.7 - (A_TickCount - StartTime) + rand + pingVariation
}
return 
}

#Esc::
Process, Close, anakinMouse.exe
return 