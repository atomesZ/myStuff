RButton::
{
star := A_TickCount
while GetKeyState("RButton", "P")
{

}
star2 := A_TickCount - star
MsgBox, %star2%
return
}