XButton1::
{
star := A_TickCount
SendInput {RButton}
star2 := A_TickCount - star
MsgBox, star2 %star2%     
return
}