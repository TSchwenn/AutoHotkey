; Tap left shift for left paren, right for right... space cadet style!

; Tune this TimeLimit variable to your liking:
TimeLimit = 500  ; milliseconds before parentheses-sending function is cancelled


*~LShift::
StartTimeL := A_TickCount ; milliseconds since PC boot
UserInput =
Input, UserInput, V L1
return

*LShift Up::
If (A_TickCount < StartTimeL + TimeLimit) AND (UserInput = "")
{
    Send % ""
    Send (
}
return

*~RShift::
StartTimeR := A_TickCount ; milliseconds since PC boot
UserInput =
Input, UserInput, V L1
return

*RShift Up::
If (A_TickCount < StartTimeR + TimeLimit) AND (UserInput = "")
{
    Send % ""
    Send )
}
return


; Adapted from autohotkey.com/board/topic/112536-remap-lshift-and-rshift-to-and-when-no-other-key-is-pressed-before-release/?p=663290
