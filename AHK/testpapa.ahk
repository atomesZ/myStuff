
MouseClickDrag, left, 0, 200, 600, 400
Run, %windir%\system32\mspaint.exe
WinWaitActive, ahk_class MSPaintApp,, 2
if ErrorLevel
    return
MouseClickDrag, L, 350, 450, 350, 350
MouseClickDrag, L, 350, 350, 400, 300
MouseClickDrag, L, 400, 300, 450, 350
MouseClickDrag, L, 450, 350, 350, 350
MouseClickDrag, L, 350, 350, 450, 450
MouseClickDrag, L, 450, 450, 450, 350
MouseClickDrag, L, 450, 350, 350, 450
MouseClickDrag, L, 350, 450, 450, 450
MouseClick, left, 951, 72, 50
MouseClickDrag, L, 550, 400, 550, 300
MouseClickDrag, L, 600, 400, 600, 300
MouseClickDrag, L, 550, 450, 550, 350