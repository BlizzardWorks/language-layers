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
#Include <greek_functions>


; Import language layers
;-------------------------------------------------

#Include <greek>
#Include <hebrew>


; Set up shared variables
;-------------------------------------------------

; Keep track of character compositions to always make backspace delete the last full character
; rather than a single diacritic
global lastKeySequence := A_TickCount
global numKeysToBackspace := 1


; Define user variables (can be customized)
;-------------------------------------------------

; Set which language the script starts in
; Give the variable the value of "English", "Greek", or "Hebrew"
activeLanguage := "English"

; Choose whether Unicode gets sent precomposed or decomposed.
; Give the variable the value of either "precomposed" or "decomposed"
global unicodeSendType := "decomposed"


; Create remapping layer
;-------------------------------------------------

*Esc::
	if(activeLanguage = "Hebrew")
	{
		Hebrew_Esc(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_Esc(A_ThisHotkey)
		return
	}
	dual.comboKey(A_ThisHotkey)
	return
*F1::
	if(activeLanguage = "Hebrew")
	{
		Hebrew_F1(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_F1(A_ThisHotkey)
		return
	}
	dual.comboKey(A_ThisHotkey)
	return
*F2::
	if(activeLanguage = "Hebrew")
	{
		Hebrew_F2(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_F2(A_ThisHotkey)
		return
	}
	dual.comboKey(A_ThisHotkey)
	return
*F3::
	if(activeLanguage = "Hebrew")
	{
		Hebrew_F3(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_F3(A_ThisHotkey)
		return
	}
	dual.comboKey(A_ThisHotkey)
	return
*F4::
	if(activeLanguage = "Hebrew")
	{
		Hebrew_F4(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_F4(A_ThisHotkey)
		return
	}
	dual.comboKey(A_ThisHotkey)
	return
*F5::
	if(activeLanguage = "Hebrew")
	{
		Hebrew_F5(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_F5(A_ThisHotkey)
		return
	}
	dual.comboKey(A_ThisHotkey)
	return
*F6::
	if(activeLanguage = "Hebrew")
	{
		Hebrew_F6(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_F6(A_ThisHotkey)
		return
	}
	dual.comboKey(A_ThisHotkey)
	return
*F7::
	if(activeLanguage = "Hebrew")
	{
		Hebrew_F7(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_F7(A_ThisHotkey)
		return
	}
	dual.comboKey(A_ThisHotkey)
	return
*F8::
	if(activeLanguage = "Hebrew")
	{
		Hebrew_F8(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_F8(A_ThisHotkey)
		return
	}
	dual.comboKey(A_ThisHotkey)
	return
*F9::
	if(activeLanguage = "Hebrew")
	{
		Hebrew_F9(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_F9(A_ThisHotkey)
		return
	}
	dual.comboKey(A_ThisHotkey)
	return
*F10::
	if(activeLanguage = "Hebrew")
	{
		Hebrew_F10(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_F10(A_ThisHotkey)
		return
	}
	dual.comboKey(A_ThisHotkey)
	return
*F11::
	if(activeLanguage = "Hebrew")
	{
		Hebrew_F11(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_F11(A_ThisHotkey)
		return
	}
	dual.comboKey(A_ThisHotkey)
	return
*F12::
	if(activeLanguage = "Hebrew")
	{
		Hebrew_F12(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_F12(A_ThisHotkey)
		return
	}
	dual.comboKey(A_ThisHotkey)
	return

	
*`::
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
	dual.comboKey(A_ThisHotkey)
	return
*1::
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
	dual.comboKey(A_ThisHotkey)
	return
*2::
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
	dual.comboKey(A_ThisHotkey)
	return
*3::
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
	dual.comboKey(A_ThisHotkey)
	return
*4::
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
	dual.comboKey(A_ThisHotkey)
	return
*5::
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
	dual.comboKey(A_ThisHotkey)
	return
*6::
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
	dual.comboKey(A_ThisHotkey)
	return
*7::
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
	dual.comboKey(A_ThisHotkey)
	return
*8::
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
	dual.comboKey(A_ThisHotkey)
	return
*9::
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
	dual.comboKey(A_ThisHotkey)
	return
*0::
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
	dual.comboKey(A_ThisHotkey)
	return
*-::
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
	dual.comboKey(A_ThisHotkey)
	return
*=::
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
	dual.comboKey(A_ThisHotkey)
	return
*Backspace::
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
	dual.comboKey(A_ThisHotkey)
	return

	
*Tab::
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
	dual.comboKey(A_ThisHotkey)
	return
*q::
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
	dual.comboKey(A_ThisHotkey)
	return
*w::
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
	dual.comboKey(A_ThisHotkey)
	return
*e::
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
	dual.comboKey(A_ThisHotkey)
	return
*r::
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
	dual.comboKey(A_ThisHotkey)
	return
*t::
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
	dual.comboKey(A_ThisHotkey)
	return
*y::
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
	dual.comboKey(A_ThisHotkey)
	return
*u::
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
	dual.comboKey(A_ThisHotkey)
	return
*i::
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
	dual.comboKey(A_ThisHotkey)
	return
*o::
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
	dual.comboKey(A_ThisHotkey)
	return
*p::
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
	dual.comboKey(A_ThisHotkey)
	return
*[::
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
	dual.comboKey(A_ThisHotkey)
	return
*]::
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
	dual.comboKey(A_ThisHotkey)
	return
*\::
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
	dual.comboKey(A_ThisHotkey)
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
	dual.comboKey(A_ThisHotkey)
	return
*s::
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
	dual.comboKey(A_ThisHotkey)
	return
*d::
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
	dual.comboKey(A_ThisHotkey)
	return
*f::
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
	dual.comboKey(A_ThisHotkey)
	return
*g::
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
	dual.comboKey(A_ThisHotkey)
	return
*h::
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
	dual.comboKey(A_ThisHotkey)
	return
*j::
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
	dual.comboKey(A_ThisHotkey)
	return
*k::
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
	dual.comboKey(A_ThisHotkey)
	return
*l::
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
	dual.comboKey(A_ThisHotkey)
	return
*`;::
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
	dual.comboKey(A_ThisHotkey)
	return
*'::
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
	dual.comboKey(A_ThisHotkey)
	return
*Enter::
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
	dual.comboKey(A_ThisHotkey)
	return

	
*LShift::
*LShift Up::
	dual.modifier()
	return
*z::
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
	dual.comboKey(A_ThisHotkey)
	return
*x::
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
	dual.comboKey(A_ThisHotkey)
	return
*c::
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
	dual.comboKey(A_ThisHotkey)
	return
*v::
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
	dual.comboKey(A_ThisHotkey)
	return
*b::
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
	dual.comboKey(A_ThisHotkey)
	return
*n::
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
	dual.comboKey(A_ThisHotkey)
	return
*m::
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
	dual.comboKey(A_ThisHotkey)
	return
*,::
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
	dual.comboKey(A_ThisHotkey)
	return
*.::
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
	dual.comboKey(A_ThisHotkey)
	return
*/::
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
*RShift Up::
	dual.modifier()
	return

	
*LCtrl::
*LCtrl Up::
	dual.modifier()
	return
*LWin::
*LWin Up::
	dual.modifier()
	return
*LAlt::
*LAlt Up::
	dual.modifier()
	return
*Space::
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
	dual.comboKey(A_ThisHotkey)
	return
*RAlt::
*RAlt Up::
	dual.modifier()
	return
*RWin::
*RWin Up::
	dual.modifier()
	return
*AppsKey::
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
	dual.comboKey(A_ThisHotkey)
	return
*RCtrl::
*RCtrl Up::
	dual.modifier()
	return

	
*Left::
	if(activeLanguage = "Hebrew")
	{
		Hebrew_Left(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_Left(A_ThisHotkey)
		return
	}
	dual.comboKey(A_ThisHotkey)
	return
*Down::
	if(activeLanguage = "Hebrew")
	{
		Hebrew_Down(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_Down(A_ThisHotkey)
		return
	}
	dual.comboKey(A_ThisHotkey)
	return
*Up::
	if(activeLanguage = "Hebrew")
	{
		Hebrew_Up(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_Up(A_ThisHotkey)
		return
	}
	dual.comboKey(A_ThisHotkey)
	return
*Right::
	if(activeLanguage = "Hebrew")
	{
		Hebrew_Right(A_ThisHotkey)
		return
	}
	else if(activeLanguage = "Greek")
	{
		Greek_Right(A_ThisHotkey)
		return
	}
	dual.comboKey(A_ThisHotkey)
	return