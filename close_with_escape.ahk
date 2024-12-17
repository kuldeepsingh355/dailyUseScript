#Requires AutoHotkey v2.0  ; Ensures the script runs in AutoHotkey v2
global EscapeCount := 0  ; Initialize EscapeCount globally

; Create a timer that will reset EscapeCount after 1 second of inactivity
; Hotkey for Esc
Esc::
{
    global EscapeCount  ; Declare the global variable explicitly
    EscapeCount++

    if (EscapeCount = 2) {
        EscapeCount := 0  ; Reset the counter
        Send("{Alt down}{F4}{Alt up}")  ; Send "Alt + F4" to close the window
    }else {
		SetTimer After, -1000
	}
	 After()  ; This is a nested function.
    {
      EscapeCount := 0  ; Reset the counter
    }
}
return
