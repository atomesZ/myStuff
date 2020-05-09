#Include AutoHotkey.dll


InputBox, pingVariation, Ping Variation, enter your ping variation

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

$XButton2:: 
{
Send {XButton2}
cond := false
return
}

i:= 0

n::
{
while (true)
{
ASbase := getDigit1() + getDigit2()/10
as := 1000 / ASbase 
;Random, rand, 3 + pingVariation, 8 + pingVariation
i++
}
return
}

;ahkdll:=AhkThread("while (true){as := 1000 / (getDigit1() + getDigit2()/10)}")
Thread := AhkThread("MsgBox Message from thread.")
p::
{
MsgBox, %i%
return
}

XButton1:: 
{
cond := true
while cond
{	
	SendInput {XButton2}
	Sleep as * 0.3 ;+ rand
	SendInput {RButton}
	Sleep as * 0.7 ;+ rand
}
return 
}

#Esc::
Process, Close, anakinthread.exe
return 