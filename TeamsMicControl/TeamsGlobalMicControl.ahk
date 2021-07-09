;
; Teams Global Mic Control
;

; Change this to change the hotkey. https://www.autohotkey.com/docs/Tutorial.htm
F6:: 
if WinExist("ahk_exe Teams.exe") {
  ; Capture current active window so we can switch back later
  WinGet, activeWindow ,, A

  ; Switch to Teams and send the mute toggle "<Ctrl><Shift>m"
  WinActivate, ahk_exe Teams.exe
  Send {LCtrl down}
  Send {Shift down}
  Send m
  Send {LCtrl up}
  Send {Shift up}

  ; Switch back to the previosuly active window
  WinActivate, ahk_id %activeWindow%
}
return