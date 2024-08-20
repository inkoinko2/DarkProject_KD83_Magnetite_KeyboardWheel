if not A_IsAdmin

Run *RunAs "%A_ScriptFullPath%"

mode := 1

+F2::
mode := mod(mode + 1, 3)
ToolTip, Mode %mode%, 0, 0
Sleep, 1000
ToolTip
Return

SC130::
BlockInput, on
if (mode = 1) {
    Send, {Blind}{Ctrl Down}
    Sleep, 10
    Send, {Blind}{PgDn}
    Sleep, 10
    Send, {Blind}{Ctrl Up}
} else if (mode = 2) {
    Send, {Shift Down}
    send {WheelUp 2}
    Send, {Shift Up}
} else {
    send {WheelUp 2}
}
BlockInput, off
Return

SC12E::
BlockInput, on
if (mode = 1) {
    Send, {Blind}{Ctrl Down}
    Sleep, 10
    Send, {Blind}{PgUp}
    Sleep, 10
    Send, {Blind}{Ctrl Up}
} else if (mode = 2) {
    Send, {Shift Down}
    send {WheelDown 2}
    Send, {Shift Up}
} else {
    send {WheelDown 2}
}
BlockInput, off
Return