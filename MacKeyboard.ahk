;-----------------------------------------
; Mac keyboard to Windows Key Mappings
;=========================================

; --------------------------------------------------------------
; NOTES
; --------------------------------------------------------------
; ! = ALT
; ^ = CTRL
; + = SHIFT
; # = WIN
;
; Debug action snippet: MsgBox You pressed Control-A while Notepad is active.

#InstallKeybdHook
#SingleInstance force
SetTitleMatchMode 2
SendMode Input

; --------------------------------------------------------------
; Mac-like screenshots in Windows (requires Windows 10 Snip & Sketch)
; --------------------------------------------------------------

; Capture entire screen with CMD/WIN + SHIFT + 3
#+3::send #{PrintScreen}

; Capture portion of the screen with CMD/WIN + SHIFT + 4
#+4::#+s

; --------------------------------------------------------------
; media/function keys all mapped to the right option key
; --------------------------------------------------------------

F7::SendInput {Media_Prev}
F8::SendInput {Media_Play_Pause}
F9::SendInput {Media_Next}
F10::SendInput {Volume_Mute}
F11::SendInput {Volume_Down}
F12::SendInput {Volume_Up}

; swap left command/windows key with left alt
;LWin::LAlt
;LAlt::LWin ; add a semicolon in front of this line if you want to disable the windows key

; Eject Key
;F20::SendInput {Insert} ; F20 doesn't show up on AHK anymore, see #3

; F13-15, standard windows mapping
F13::SendInput {PrintScreen}
F14::SendInput {ScrollLock}
F15::SendInput {Pause}


; --------------------------------------------------------------
; OS X system shortcuts
; --------------------------------------------------------------

; Make Ctrl + S work with cmd (windows) key
#s::Send, ^s

; Selecting
#a::Send, ^a

; Copying
#c::Send, ^c

; Pasting
#v::Send, ^v

; Cutting
#x::Send, ^x

; Opening
#o::Send ^o

; Finding
#f::Send ^f

; Undo
#z::Send ^z

; Redo
#y::Send ^y

; New tab
#t::Send ^t

; close tab
#w::Send ^w

; new
#n::Send ^n

; refresh
#r::Send ^r

; Close windows (cmd + q to Alt + F4)
#q::Send !{F4}

; Remap Windows + Tab to Alt + Tab.
Lwin & Tab::AltTab

; hide window
#h::WinMinimize, A


; --------------------------------------------------------------
; OS X keyboard mappings for special chars
; --------------------------------------------------------------

; Map AltGr + 7 to |
<^>!7::SendInput {|}

; Map AltGr + Shift + 7 to \
<^>!+7::SendInput {\}

; Map AltGr + Shift + 8 to {
<^>!+8::SendInput {{}

; Map AltGr + Shift + 9 to }
<^>!+9::SendInput {}}

; --------------------------------------------------------------
; Application specific
; --------------------------------------------------------------

; Google Chrome
#IfWinActive, ahk_class Chrome_WidgetWin_1

; Show Web Developer Tools with cmd + alt + i
#!i::Send {F12}

; Show source code with cmd + alt + u
#!u::Send ^u

#IfWinActive

