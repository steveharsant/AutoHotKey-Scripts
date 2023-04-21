; This script triggers 2 sets of shorcuts for MS Word.
; 1. Shortcuts to accept all tracked changes.
; 2. Shortcuts to delete all comments.
;
; This script is triggered on right mouse button click.
;
; To use, run the script, open the doc and click the right mouse button.
; To close, tripple click the green A icon in the system tray, then exit from the file menu that appears.

#MaxThreadsPerHotkey 2

RButton::
    Send {Alt}
	  Send r
    Send a
    Send 2
    Send s
    Sleep, 1000
    Send {Alt}
	  Send r
    Send d
    Send o
return
