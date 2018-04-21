SendMode Input
#NoEnv
#SingleInstance force


; Change Masking Key
;-------------------------------------------------

; Prevents masked Hotkeys from sending LCtrls that can interfere with the script.
; See https://autohotkey.com/docs/commands/_MenuMaskKey.htm
#MenuMaskKey VK07 


; Setup Dual library
;-------------------------------------------------

#Include <dual/dual>
dual := new Dual
#Include <dual/defaults>


; Create remapping layer
;-------------------------------------------------

#If true ; Override defaults.ahk. There will be "duplicate hotkey" errors otherwise.

CapsLock::dual.comboKey("VK88 Down", {VK88: "VK88 Up"})

a::dual.comboKey({VK88: "א"})
b::dual.comboKey({VK88: "ב"})
g::dual.comboKey({VK88: "ג"})
d::dual.comboKey({VK88: "ד"})

#If