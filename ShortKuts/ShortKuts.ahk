;;; Adds global shortcuts to Windows, overwriting any default/system shortcuts ;;;
;
; Modified from: https://gist.github.com/hsab/205312bf4f4e13ac44bfda4422ff4adb
;
;;; Examples:
;
;; Win+Alt+G - Open Gmail in Chrome
;     #!g::
;       Run "C:\Program Files\Google\Chrome\Application\chrome.exe" --app="https://mail.google.com/mail/"
;     Return
;
;; Win+Shift+Break - Edit this file
;     #+Break::
;       Run "C:\Windows\system32\notepad.exe" "d:\AutoHotkey.ahk"
;     Return

; # Environment Setup
icon = .\icon.ico
IfExist, %icon%
  Menu, Tray, Icon, %icon%

; Win+F - Open new Firefox windows (Overwrites Windows feedback system shortcut)
#f::
  Run "C:\Program Files\Mozilla Firefox\firefox.exe"
Return
