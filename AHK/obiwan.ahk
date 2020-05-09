getDigit(x)
{
	y := 43
	PixelGetColor, color, x + 5, y 
	if (color = 0xFFFFFF) ; 1 3 4 5 7
	{
		PixelGetColor, color, x + 3, y
		if (color = 0xFFFFFF) ; 3 5 7
		{
			PixelGetColor, color, x + 7, y + 9
			if (color = 0xFFFFFF) ; 3 5
			{
				PixelGetColor, color, x + 2, y + 2
				if (color = 0xFFFFFF) ; 5
				{
					return 5
				}
				return 3
			}
			return 7
		}
		else ; 1 4
		{
			PixelGetColor, color, x + 6, y
			if (color = 0xFFFFFF) ; 4
			{
				return 4
			}
			return 1
		}
	}
	else ; 0 2 6 8 9
	{
		PixelGetColor, color, x + 2, y + 9
		if (color = 0xFFFFFF) ; 0 6
		{
			PixelGetColor, color, x + 6, y + 1
			if (color = 0xFFFFFF) ; 0
			{
				return 0
			}
			return 6
		}
		else ; 2 8 9
		{
			PixelGetColor, color, x + 7, y + 7
			if (color = 0xFFFFFF) ; 8 9
			{
				PixelGetColor, color, x + 1, y + 9
				if (color = 0xFFFFFF) ; 8
				{
					return 8
				}
				return 9
			}
			return 2
		}
	}
}


$XButton2:: 
{
Send {XButton2}
cond := false
return
}


lvl := 1

!p::
{
	if (lvl < 18)
		lvl += 1
	return
}

!m::
{
	if (lvl > 1)
		lvl -= 1
	return
}

!o::
{
	smiteDmg := [390, 410, 430, 450, 480, 510, 540, 570, 600, 640, 680, 720, 760, 800, 850, 900, 950, 1000]
	toto := smiteDmg[lvl]
	MsgBox hp: %hp% lvl: %lvl% smiteDmg: %toto%
	return
}

XButton1::
{
	smiteDmg := [390, 410, 430, 450, 480, 510, 540, 570, 600, 640, 680, 720, 760, 800, 850, 900, 950, 1000]
	cond := true

	while cond
	{	
		PixelGetColor, color, 273, 43
		if (color = 0xFFFFFF) ; check the slash
		{
			hp := getDigit(233) * 100 + getDigit(243) * 10 + getDigit(253)
		}
		else
		{			
			hp := getDigit(228) * 1000 + getDigit(238) * 100 + getDigit(248) * 10 + getDigit(258)
		}
		if (smiteDmg[lvl] >= hp)
		{
			Send d
			cond := false
		}
	}
	return
}

#Esc::
Process, Close, obiwan.exe
return 