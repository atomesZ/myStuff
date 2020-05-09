a := 0
XButton1:: 
{
StartTime := A_TickCount
PixelGetColor, color, 328, 857
if color = 0xFFFFFF
{
	++a 
}
PixelGetColor, color, 328, 857
if color = 0xFFFFFF
{
	++a 
}
PixelGetColor, color, 328, 857
if color = 0xFFFFFF
{
	++a 
}
PixelGetColor, color, 328, 857
if color = 0xFFFFFF
{
	++a 
}
PixelGetColor, color, 328, 857
if color = 0xFFFFFF
{
	++a 
}
PixelGetColor, color, 328, 857
if color = 0xFFFFFF
{
	++a 
}
PixelGetColor, color, 328, 857
if color = 0xFFFFFF
{
	++a 
}
PixelGetColor, color, 328, 857
if color = 0xFFFFFF
{
	++a 
}
PixelGetColor, color, 328, 857
if color = 0xFFFFFF
{
	++a 
}
PixelGetColor, color, 328, 857
if color = 0xFFFFFF
{
	++a 
}

b := 10 - A_TickCount + StartTime
Sleep b
baba := A_TickCount - StartTime
MsgBox, a %a% baba %baba%
return
}


startAS := 0.679
ASbase =  2.5 ;0.679
ASgrowth = 0.0338


Qas := 25

as1 := 320 ; 320
as2 := 80

;0x99F7FF 327, 340, 349
;height = 851 - 861 = 11px
;width = 9px
;99F7FF
;328 858,  341 858,  350, 858    0 4 6 8
;331 858,   1 2 4 7
;346, 858  3 4 5 9

n::
{
PixelGetColor, color, 344, 858
if (color = 0x99F7FF) ;1 2 4 7
{

	PixelGetColor, color, 344, 861
	if (color = 0x99F7FF) ;1 2 
	{
		PixelGetColor, color, 342, 861
		
		if (color = 0x99F7FF)
		{
			;v := 2 ;2 
		}
		
		else 
		{
			;v := 1 ;1
		}
	}

	else 
	{
		PixelGetColor, color, 343, 851
		if (color = 0x99F7FF)
		{
			;v := 7 ;7 
		}
		else
		{
			;v := 4 ;4
		}
	}
}

else 
{
	PixelGetColor, color, 341, 858
	if (color = 0x99F7FF) ;0 4 6 8
	{
		PixelGetColor, color, 341, 856;
		if (color = 0x99F7FF) ;0 6 
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

	else ; 3 5 9
	{
		PixelGetColor, color, 346, 851
		if (color = 0x99F7FF) ;3 5
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

MsgBox, %v%
return
}


XButton1:: 
{
while GetKeyState("XButton1", "P")
{
	as := 1000 / ASbase 
	Send {XButton2}
	Sleep as * 0.2 ;Sleep as2
	Send {RButton}
	Sleep as * 0.8 ;Sleep as1
	
}
return 
}

m::
{
++as1
--as2
return
}


l::
{
MsgBox, %Qas%
return
}




































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
	SendInput {XButton2}
	Sleep as * 0.3 + rand ;Sleep as2
	SendInput {RButton}
	StartTime := A_TickCount
	ASbase := getDigit1() + getDigit2()/10
	as := 1000 / ASbase 
	Random, rand, 3, 8
	Sleep as * 0.7 - (A_TickCount - StartTime) + rand ; Sleep as1
}
return 	
}