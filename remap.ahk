SendMode Input
#NoEnv
#SingleInstance force


; Change Masking Key
;-------------------------------------------------

; Prevents masked Hotkeys from sending LCtrls that can interfere with the script.
; See https://autohotkey.com/docs/commands/_MenuMaskKey.htm
#MenuMaskKey VK07 


; Set up Dual library
;-------------------------------------------------

#Include <dual/dual>
dual := new Dual


; Import functions
;-------------------------------------------------

#Include <shared_functions>


; Import layers
;-------------------------------------------------

#Include <layers/english/shiftModifier>

#Include <layers/greek/greek>
#Include <layers/greek/greek_shiftModifier>
#Include <layers/greek/greek_functions>

#Include <layers/hebrew/hebrew>

#Include <ahk-keyboard-utilities/modifiers/modifiers>
#Include <ahk-keyboard-utilities/modifiers/Alt_QWERTY>
#Include <ahk-keyboard-utilities/modifiers/AltShift_QWERTY>
#Include <ahk-keyboard-utilities/modifiers/AltShiftWin_QWERTY>
#Include <ahk-keyboard-utilities/modifiers/AltWin_QWERTY>
#Include <ahk-keyboard-utilities/modifiers/Ctrl_QWERTY>
#Include <ahk-keyboard-utilities/modifiers/CtrlAlt_QWERTY>
#Include <ahk-keyboard-utilities/modifiers/CtrlAltShift_QWERTY>
#Include <ahk-keyboard-utilities/modifiers/CtrlAltShiftWin_QWERTY>
#Include <ahk-keyboard-utilities/modifiers/CtrlAltWin_QWERTY>
#Include <ahk-keyboard-utilities/modifiers/CtrlShift_QWERTY>
#Include <ahk-keyboard-utilities/modifiers/CtrlShiftWin_QWERTY>
#Include <ahk-keyboard-utilities/modifiers/CtrlWin_QWERTY>
#Include <ahk-keyboard-utilities/modifiers/ShiftWin_QWERTY>
#Include <ahk-keyboard-utilities/modifiers/Win_QWERTY>


; Create Key Aliases
;-------------------------------------------------

global shiftModifier := "VK1A"


; Set up shared variables
;-------------------------------------------------

; Keep track of character compositions to always make backspace delete the last full character
; rather than a single diacritic
global lastKeySequence := A_TickCount
global numKeysToBackspace := 1

; Track keypresses before layers are activated to use in place of A_PriorHotkey (which returns the layer key, not the actual prior key)
global lastRealKeyDown := ""


; Define user variables (can be customized in config.ini)
;-------------------------------------------------

; Set which language the script starts in.
; Give the variable the value of "English", "Greek", or "Hebrew"
activeLanguage := ""
IniRead, activeLanguage, config.ini, General, activeLanguage

; Choose whether Unicode gets sent precomposed or decomposed.
; Give the variable the value of either "precomposed" or "decomposed"
global unicodeSendType := ""
IniRead, unicodeSendType, config.ini, General, unicodeSendType


; Create remapping layer
;-------------------------------------------------

*Esc::
	if(modifiers("Esc", "Esc"))
	{
		return
	}
	layerIndependent("Esc")
	return
*F1::
	if(modifiers("F1", "F1"))
	{
		return
	}
	layerIndependent("F1")
	return
*F2::
	if(modifiers("F2", "F2"))
	{
		return
	}
	layerIndependent("F2")
	return
*F3::
	if(modifiers("F3", "F3"))
	{
		return
	}
	layerIndependent("F3")
	return
*F4::
	if(modifiers("F4", "F4"))
	{
		return
	}
	layerIndependent("F4")
	return
*F5::
	if(modifiers("F5", "F5"))
	{
		return
	}
	layerIndependent("F5")
	return
*F6::
	if(modifiers("F6", "F6"))
	{
		return
	}
	layerIndependent("F6")
	return
*F7::
	if(modifiers("F7", "F7"))
	{
		return
	}
	layerIndependent("F7")
	return
*F8::
	if(modifiers("F8", "F8"))
	{
		return
	}
	layerIndependent("F8")
	return
*F9::
	if(modifiers("F9", "F9"))
	{
		return
	}
	layerIndependent("F9")
	return
*F10::
	if(modifiers("F10", "F10"))
	{
		return
	}
	layerIndependent("F10")
	return
*F11::
	if(modifiers("F11", "F11"))
	{
		return
	}
	layerIndependent("F11")
	return
*F12::
	if(modifiers("F12", "F12"))
	{
		return
	}
	layerIndependent("F12")
	return

	
*`::
	if(modifiers("backtick", "`"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_backtick(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_backtick(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_backtick()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*1::
	if(modifiers("1", "1"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_1(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_1(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_1()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*2::
	if(modifiers("2", "2"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_2(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_2(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_2()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*3::
	if(modifiers("3", "3"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_3(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_3(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_3()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*4::
	if(modifiers("4", "4"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_4(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_4(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_4()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*5::
	if(modifiers("5", "5"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_5(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_5(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_5()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*6::
	if(modifiers("6", "6"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_6(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_6(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_6()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*7::
	if(modifiers("7", "7"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_7(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_7(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_7()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*8::
	if(modifiers("8", "8"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_8(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_8(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_8()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*9::
	if(modifiers("9", "9"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_9(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_9(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_9()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*0::
	if(modifiers("0", "0"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_0(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_0(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_0()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*-::
	if(modifiers("hyphen", "-"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_hyphen(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_hyphen(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_hyphen()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*=::
	if(modifiers("equals", "="))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_equals(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_equals(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_equals()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*Backspace::
	if(modifiers("Backspace", "Backspace"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_Backspace(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_Backspace(A_ThisHotkey)
		return
	}
	layerIndependentBackspace()
	return

	
*Tab::
	if(modifiers("Tab", "Tab"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_Tab(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_Tab(A_ThisHotkey)
		return
	}
	layerIndependent("Tab")
	return
*q::
	if(modifiers("q", "q"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_q(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_q(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_q()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*w::
	if(modifiers("w", "w"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_w(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_w(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_w()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*e::
	if(modifiers("e", "e"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_e(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_e(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_e()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*r::
	if(modifiers("r", "r"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_r(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_r(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_r()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*t::
	if(modifiers("t", "t"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_t(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_t(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_t()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*y::
	if(modifiers("y", "y"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_y(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_y(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_y()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*u::
	if(modifiers("u", "u"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_u(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_u(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_u()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*i::
	if(modifiers("i", "i"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_i(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_i(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_i()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*o::
	if(modifiers("o", "o"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_o(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_o(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_o()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*p::
	if(modifiers("p", "p"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_p(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_p(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_p()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*[::
	if(modifiers("openBracket", "["))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_openBracket(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_openBracket(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_openBracket()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*]::
	if(modifiers("closeBracket", "]"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_closeBracket(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_closeBracket(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_closeBracket()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*\::
	if(modifiers("backslash", "\"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_backslash(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_backslash(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_backslash()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return

	
*CapsLock::
	if(activeLanguage = "English")
	{
		activeLanguage := "Greek"
	}
	else if(activeLanguage = "Greek")
	{
		activeLanguage := "English"
	}
	return
*a::
	if(modifiers("a", "a"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_a(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_a(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_a()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*s::
	if(modifiers("s", "s"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_s(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_s(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_s()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*d::
	if(modifiers("d", "d"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_d(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_d(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_d()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*f::
	if(modifiers("f", "f"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_f(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_f(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_f()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*g::
	if(modifiers("g", "g"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_g(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_g(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_g()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*h::
	if(modifiers("h", "h"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_h(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_h(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_h()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*j::
	if(modifiers("j", "j"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_j(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_j(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_j()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*k::
	if(modifiers("k", "k"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_k(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_k(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_k()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*l::
	if(modifiers("l", "l"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_l(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_l(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_l()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*`;::
	if(modifiers("semicolon", ";"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_semicolon(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_semicolon(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_semicolon()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*'::
	if(modifiers("apostrophe", "'"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_apostrophe(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_apostrophe(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_apostrophe()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*Enter::
	if(modifiers("Enter", "Enter"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_Enter(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_Enter(A_ThisHotkey)
		return
	}
	layerIndependent("Enter")
	return

	
*LShift::
	lastKey := A_PriorHotkey
	if(lastKey != "*Lshift" and lastKey != "*Lshift Up")
	{
		lastRealKeyDown := Dual.cleanKey(lastKey)
	}
	shiftDownNoUp := true
	dual.combine(shiftModifier, shiftModifier, {delay: 0, timeout: 0, doublePress: -1, specificDelays: false})
	return
*LShift Up::
	lastKey := A_PriorHotkey
	if(lastKey != "*Lshift" and lastKey != "*Lshift Up")
	{
		lastRealKeyDown := Dual.cleanKey(lastKey)
	}
	shiftDownNoUp := false
	dual.combine(shiftModifier, shiftModifier, {delay: 0, timeout: 0, doublePress: -1, specificDelays: false})
	return
*z::
	if(modifiers("z", "z"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_z(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_z(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_z()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*x::
	if(modifiers("x", "x"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_x(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_x(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_x()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*c::
	if(modifiers("c", "c"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_c(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_c(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_c()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*v::
	if(modifiers("v", "v"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_v(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_v(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_v()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*b::
	if(modifiers("b", "b"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_b(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_b(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_b()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*n::
	if(modifiers("n", "n"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_n(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_n(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_n()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*m::
	if(modifiers("m", "m"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_m(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_m(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_m()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*,::
	if(modifiers("comma", ","))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_comma(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_comma(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_comma()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*.::
	if(modifiers("period", "."))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_period(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_period(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_period()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*/::
	if(modifiers("slash", "/"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_slash(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_slash(A_ThisHotkey)
		return
	}
	dual.comboKey(A_ThisHotkey)
	return
*RShift::
	lastKey := A_PriorHotkey
	if(lastKey != "*Rshift" and lastKey != "*Rshift Up")
	{
		lastRealKeyDown := Dual.cleanKey(lastKey)
	}
	shiftDownNoUp := true
	dual.combine(shiftModifier, shiftModifier, {delay: 0, timeout: 0, doublePress: -1, specificDelays: false})
	return
*RShift Up::
	lastKey := A_PriorHotkey
	if(lastKey != "*Rshift" and lastKey != "*Rshift Up")
	{
		lastRealKeyDown := Dual.cleanKey(lastKey)
	}
	shiftDownNoUp := false
	dual.combine(shiftModifier, shiftModifier, {delay: 0, timeout: 0, doublePress: -1, specificDelays: false})
	return

	
*LCtrl::
	ctrlDownNoUp := true
	return
*LCtrl Up::
	ctrlDownNoUp := false
	return
*LWin::
	winDownNoUp := true
	return
*LWin Up::
	winDownNoUp := false
	return
*LAlt::
	altDownNoUp := true
	return
*LAlt Up::
	altDownNoUp := false
	return
*Space::
	if(modifiers("Space", "Space"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_Space(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_Space(A_ThisHotkey)
		return
	}
	layerIndependent("Space")
	return
*RAlt::
	altDownNoUp := true
	return
*RAlt Up::
	altDownNoUp := false
	return
*RWin::
	winDownNoUp := true
	return
*RWin Up::
	winDownNoUp := false
	return
*AppsKey::
	if(modifiers("AppsKey", "AppsKey"))
	{
		return
	}
	if(activeLanguage = "Hebrew")
	{
		Hebrew_AppsKey(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_AppsKey(A_ThisHotkey)
		return
	}
	shiftModifier_keys := shiftModifier_AppsKey()
	dual.comboKey(A_ThisHotkey, {(shiftModifier): shiftModifier_keys})
	return
*RCtrl::
	ctrlDownNoUp := true
	return
*RCtrl Up::
	ctrlDownNoUp := false
	return

	
*Left::
	if(modifiers("Left", "Left"))
	{
		return
	}
	layerIndependent("Left")
	return
*Down::
	if(modifiers("Down", "Down"))
	{
		return
	}
	layerIndependent("Down")
	return
*Up::
	if(modifiers("Up", "Up"))
	{
		return
	}
	layerIndependent("Up")
	return
*Right::
	if(modifiers("Right", "Right"))
	{
		return
	}
	layerIndependent("Right")
	return