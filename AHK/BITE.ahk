#^space::
Loop, 5
{
Send B
Send {Enter}
Send BI
Send {Enter}
Send BIT
Send {Enter}
Send BITE
Send {Enter}
Sleep 10
Send BITE
Send {Enter}
Send BIT
Send {Enter}
Send BI
Send {Enter}
}
Return

setkeydelay, 100, 100, Play
#space::
{
Send, {enter}
Send, /all{space}{space 6}{G 6}{space 11}{G 6}
Send, {enter}

Send, {enter}
Send, /all{space}{space 4}{G 2}{space 7}{G 2}{space 10}{G 2}{space 7}{G 2}
Send, {enter}

Send, {enter}
Send, /all{space}{space 2}{G 2}{space 21}{space 2}{G 2}
Send, {enter}

Send, {enter}
Send, /all{space}{space 1}{G 2}{space 22}{space 1}{G 2}
Send, {enter}

Send, {enter}
Send, /all{space}{space 1}{G 2}{space 7}{G 4}{space 5}{G 2}{space 7}{G 4}
Send, {enter}

Send, {enter}
Send, /all{space}{space 2}{G 2}{space 9}{G 2}{space 6}{space 2}{G 2}{space 9}{G 2}
Send, {enter}

Send, {enter}
Send, /all{space}{space 3}{G 2}{space 8}{G 2}{space 5}{space 4}{G 2}{space 8}{G 2}
Send, {enter}

Send, {enter}
Send, /all{space}{space 5}{G 7}{space 5}{space 5}{G 7}
Send, {enter}
}
Return