Loop,
{
PixelGetColor, c, 1087, 139
	while (c = 0x9F9514 or c = 0x111009 or c = 0xBECD13)
	{
		PixelGetColor, color, 635, 573
		Sleep 10
		if (color = 0x785404 or color = 0x2A251E or color = 0x030303)
		{
			MouseMove, 635, 573
			Sleep 10
			Send {LButton}
			Sleep 100
		}
	}
	
	Sleep 1000
}