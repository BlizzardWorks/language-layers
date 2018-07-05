; Set up diacritic and special punctuation aliases
;-------------------------------------------------

; Declarations							; Unicode descriptions
;---------------------------------------;-------------------
global Greek_grave := "{U+0300}" 		; combining grave Greek_accent varia
global Greek_acute := "{U+0301}" 		; combining acute Greek_accent tonos, oxia
global Greek_macron := "{U+0304}" 		; combining macron
global Greek_breve := "{U+0306}" 		; combining breve
global Greek_diaeresis := "{U+0308}" 	; combining diaeresis dialytika
global Greek_smooth := "{U+0313}" 		; combining comma above psili, smooth Greek_breathing mark
global Greek_rough := "{U+0314}" 		; combining reversed comma above dasia, rough Greek_breathing mark
global Greek_circumflex := "{U+0342}" 	; combining greek perispomeni circumflex, tilde, inverted Greek_breve
global Greek_iotaSub := "{U+0345}" 		; combining greek ypogegrammeni iota subscript

global Greek_middleDot := "{U+00B7}"	; Greek colon or high dot (Latin middle dot)


; Set up variables
;-------------------------------------------------

; Variable declarations	 			; Possible options
;-----------------------------------;-----------------------
global Greek_capital := false	 	; false true
global Greek_vowel := ""			; "" a e h i o u w
global Greek_breathing := ""		; "" smooth rough
global Greek_accent := ""			; "" acute grave circumflex
global Greek_quantity := ""			; "" iota macron breve


; Keep track of previous diacritic state so that if an invalid diacritic sequence
; is entered, the state can be rolled back
global Greek_priorState := [Greek_breathing, Greek_accent, Greek_quantity]


; Create remapping layer
;-------------------------------------------------

Greek_Esc(key)
{
	shiftModifier_keys := Greek_shiftModifier_Esc()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}
Greek_F1(key)
{
	shiftModifier_keys := Greek_shiftModifier_F1()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}
Greek_F2(key)
{
	shiftModifier_keys := Greek_shiftModifier_F2()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}
Greek_F3(key)
{
	shiftModifier_keys := Greek_shiftModifier_F3()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}
Greek_F4(key)
{
	shiftModifier_keys := Greek_shiftModifier_F4()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}
Greek_F5(key)
{
	shiftModifier_keys := Greek_shiftModifier_F5()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}
Greek_F6(key)
{
	shiftModifier_keys := Greek_shiftModifier_F6()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}
Greek_F7(key)
{
	shiftModifier_keys := Greek_shiftModifier_F7()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}
Greek_F8(key)
{
	shiftModifier_keys := Greek_shiftModifier_F8()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}
Greek_F9(key)
{
	shiftModifier_keys := Greek_shiftModifier_F9()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}
Greek_F10(key)
{
	shiftModifier_keys := Greek_shiftModifier_F10()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}
Greek_F11(key)
{
	shiftModifier_keys := Greek_shiftModifier_F11()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}
Greek_F12(key)
{
	shiftModifier_keys := Greek_shiftModifier_F12()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}


Greek_backtick(key)
{
	shiftModifier_keys := Greek_shiftModifier_backtick()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}
Greek_1(key)
{
	; Exclamation point should trigger final sigma
	if (shiftDownNoUp)
	{
		Greek_handleFinalSigma()
	}
	shiftModifier_keys := Greek_shiftModifier_1()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}
Greek_2(key)
{
	shiftModifier_keys := Greek_shiftModifier_2()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}
Greek_3(key)
{
	shiftModifier_keys := Greek_shiftModifier_3()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}
Greek_4(key)
{
	shiftModifier_keys := Greek_shiftModifier_4()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}
Greek_5(key)
{
	shiftModifier_keys := Greek_shiftModifier_5()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}
Greek_6(key)
{
	shiftModifier_keys := Greek_shiftModifier_6()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}
Greek_7(key)
{
	shiftModifier_keys := Greek_shiftModifier_7()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}
Greek_8(key)
{
	shiftModifier_keys := Greek_shiftModifier_8()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}
Greek_9(key)
{
	shiftModifier_keys := Greek_shiftModifier_9()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}
Greek_0(key)
{
	; Closing parentheses should trigger final sigma
	if (shiftDownNoUp)
	{
		Greek_handleFinalSigma()
	}
	shiftModifier_keys := Greek_shiftModifier_0()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}
Greek_hyphen(key)
{
	shiftModifier_keys := Greek_shiftModifier_hyphen()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}
Greek_equals(key)
{
	if(!shiftDownNoUp) {
		if (Greek_vowel = "")
		{
			return
		}
		Greek_priorState := [Greek_breathing, Greek_accent, Greek_quantity]
		if (Greek_accent = "circumflex")
		{
		Greek_accent := ""
		}
		else
		{
			Greek_accent := "circumflex"
		}
		Greek_addDiacritic()
	}
	shiftModifier_keys := Greek_shiftModifier_equals()
	dual.comboKey([], {(shiftModifier): shiftModifier_keys})
	return
}
Greek_Backspace(key)
{
	Greek_resetVowel()
	layerIndependentBackspace()
	return
}


Greek_Tab(key)
{
	Greek_handleFinalSigma()
	layerIndependent("Tab")
	return
}
Greek_q(key)
{
	Greek_resetVowel()
	shiftModifier_keys := Greek_shiftModifier_q()
	dual.comboKey("ϙ", {(shiftModifier): shiftModifier_keys})
	return
}
Greek_w(key)
{
	Greek_capital := shiftDownNoUp
	Greek_vowel := "w"
	shiftModifier_keys := Greek_shiftModifier_w()
	dual.comboKey("ω", {(shiftModifier): shiftModifier_keys})
	return
}
Greek_e(key)
{
	Greek_capital := shiftDownNoUp
	Greek_vowel := "e"
	Greek_resetDiacritics()
	shiftModifier_keys := Greek_shiftModifier_e()
	dual.comboKey("ε", {(shiftModifier): shiftModifier_keys})
	return
}
Greek_r(key)
{
	Greek_capital := shiftDownNoUp
	Greek_vowel := "r"
	Greek_resetDiacritics()
	shiftModifier_keys := Greek_shiftModifier_r()
	dual.comboKey("ρ", {(shiftModifier): shiftModifier_keys})
	return
}
Greek_t(key)
{
	Greek_resetVowel()
	shiftModifier_keys := Greek_shiftModifier_t()
	dual.comboKey("τ", {(shiftModifier): shiftModifier_keys})
	return
}
Greek_y(key)
{
	Greek_resetVowel()
	shiftModifier_keys := Greek_shiftModifier_y()
	dual.comboKey("ψ", {(shiftModifier): shiftModifier_keys})
	return
}
Greek_u(key)
{
	Greek_capital := shiftDownNoUp
	Greek_vowel := "u"
	Greek_resetDiacritics()
	shiftModifier_keys := Greek_shiftModifier_u()
	dual.comboKey("υ", {(shiftModifier): shiftModifier_keys})
	return
}
Greek_i(key)
{
	Greek_capital := shiftDownNoUp
	Greek_vowel := "i"
	Greek_resetDiacritics()
	shiftModifier_keys := Greek_shiftModifier_i()
	dual.comboKey("ι", {(shiftModifier): shiftModifier_keys})
	return
}
Greek_o(key)
{
	Greek_capital := shiftDownNoUp
	Greek_vowel := "o"
	Greek_resetDiacritics()
	shiftModifier_keys := Greek_shiftModifier_o()
	dual.comboKey("ο", {(shiftModifier): shiftModifier_keys})
	return
}
Greek_p(key)
{
	Greek_resetVowel()
	shiftModifier_keys := Greek_shiftModifier_p()
	dual.comboKey("π", {(shiftModifier): shiftModifier_keys})
	return
}
Greek_openBracket(key)
{
	if (Greek_vowel = "")
	{
		return
	}
	Greek_priorState := [Greek_breathing, Greek_accent, Greek_quantity]
	if (!shiftDownNoUp)
	{
		if (Greek_breathing = "rough")
		{
			Greek_breathing := ""
		}
		else
		{
			Greek_breathing := "rough"
		}
	}
	else
	{
		if (Greek_quantity = "macron")
		{
			Greek_quantity := ""
		}
		else
		{
			Greek_quantity := "macron"
		}
	}
	Greek_addDiacritic()
	return
}
Greek_closeBracket(key)
{
	if (Greek_vowel = "")
	{
		return
	}
	Greek_priorState := [Greek_breathing, Greek_accent, Greek_quantity]
	if (!shiftDownNoUp)
	{
		if (Greek_breathing = "smooth")
		{
			Greek_breathing := ""
		}
		else
		{
			Greek_breathing := "smooth"
		}
	}
	else
	{
		if (Greek_quantity = "breve")
		{
			Greek_quantity := ""
		}
		else
		{
			Greek_quantity := "breve"
		}
	}
	Greek_addDiacritic()
	return
}
Greek_backslash(key)
{
	if (Greek_vowel = "")
	{
		return
	}
	Greek_priorState := [Greek_breathing, Greek_accent, Greek_quantity]
	if (!shiftDownNoUp)
	{
		if (Greek_accent = "grave")
		{
			Greek_accent := ""
		}
		else
		{
			Greek_accent := "grave"
		}
	}
	else
	{
		if (Greek_quantity = "iota")
		{
			Greek_quantity := ""
		}
		else
		{
			Greek_quantity := "iota"
		}
	}
	Greek_addDiacritic()
	return
}


Greek_CapsLock(key)
{
	shiftModifier_keys := Greek_shiftModifier_CapsLock()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}
Greek_a(key)
{
	Greek_capital := shiftDownNoUp
	Greek_vowel := "a"
	Greek_resetDiacritics()
	shiftModifier_keys := Greek_shiftModifier_a()
	dual.comboKey("α", {(shiftModifier): shiftModifier_keys})
	return
}
Greek_s(key)
{
	Greek_resetVowel()
	shiftModifier_keys := Greek_shiftModifier_s()
	dual.comboKey("σ", {(shiftModifier): shiftModifier_keys})
	return
}
Greek_d(key)
{
	Greek_resetVowel()
	shiftModifier_keys := Greek_shiftModifier_d()
	dual.comboKey("δ", {(shiftModifier): shiftModifier_keys})
	return
}
Greek_f(key)
{
	Greek_resetVowel()
	shiftModifier_keys := Greek_shiftModifier_f()
	dual.comboKey("φ", {(shiftModifier): shiftModifier_keys})
	return
}
Greek_g(key)
{
	Greek_resetVowel()
	shiftModifier_keys := Greek_shiftModifier_g()
	dual.comboKey("γ", {(shiftModifier): shiftModifier_keys})
	return
}
Greek_h(key)
{
	Greek_capital := shiftDownNoUp
	Greek_vowel := "h"
	Greek_resetDiacritics()
	shiftModifier_keys := Greek_shiftModifier_h()
	dual.comboKey("η", {(shiftModifier): shiftModifier_keys})
	return
}
Greek_j(key)
{
	Greek_resetVowel()
	shiftModifier_keys := Greek_shiftModifier_j()
	dual.comboKey("θ", {(shiftModifier): shiftModifier_keys})
	return
}
Greek_k(key)
{
	Greek_resetVowel()
	shiftModifier_keys := Greek_shiftModifier_k()
	dual.comboKey("κ", {(shiftModifier): shiftModifier_keys})
	return
}
Greek_l(key)
{
	Greek_resetVowel()
	shiftModifier_keys := Greek_shiftModifier_l()
	dual.comboKey("λ", {(shiftModifier): shiftModifier_keys})
	return
}
Greek_semicolon(key)
{
	if (!shiftDownNoUp)
	{
		Greek_handleFinalSigma()
		SendInput %Greek_middleDot%
	}
	else
	{
		if (Greek_vowel = "")
		{
			return
		}
		Greek_priorState := [Greek_breathing, Greek_accent, Greek_quantity]
		if (Greek_breathing = "diaeresis")
		{
			Greek_breathing := ""
		}
		else
		{
			Greek_breathing := "diaeresis"
		}
		Greek_addDiacritic()
	}
	return
}
Greek_apostrophe(key)
{
	; Quotes should trigger final sigma, but apostrophe indicating
	; elision should not.
	if (shiftDownNoUp)
	{
		Greek_handleFinalSigma()
	}
	shiftModifier_keys := Greek_shiftModifier_apostrophe()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}
Greek_Enter(key)
{
	Greek_handleFinalSigma()
	layerIndependent("Enter")
	return
}


Greek_z(key)
{
	Greek_resetVowel()
	shiftModifier_keys := Greek_shiftModifier_z()
	dual.comboKey("ζ", {(shiftModifier): shiftModifier_keys})
	return
}
Greek_x(key)
{
	Greek_resetVowel()
	shiftModifier_keys := Greek_shiftModifier_x()
	dual.comboKey("ξ", {(shiftModifier): shiftModifier_keys})
	return
}
Greek_c(key)
{
	Greek_resetVowel()
	shiftModifier_keys := Greek_shiftModifier_c()
	dual.comboKey("χ", {(shiftModifier): shiftModifier_keys})
	return
}
Greek_v(key)
{
	Greek_resetVowel()
	shiftModifier_keys := Greek_shiftModifier_v()
	dual.comboKey("ϝ", {(shiftModifier): shiftModifier_keys})
	return
}
Greek_b(key)
{
	Greek_resetVowel()
	shiftModifier_keys := Greek_shiftModifier_b()
	dual.comboKey("β", {(shiftModifier): shiftModifier_keys})
	return
}
Greek_n(key)
{
	Greek_resetVowel()
	shiftModifier_keys := Greek_shiftModifier_n()
	dual.comboKey("ν", {(shiftModifier): shiftModifier_keys})
	return
}
Greek_m(key)
{
	Greek_resetVowel()
	shiftModifier_keys := Greek_shiftModifier_m()
	dual.comboKey("μ", {(shiftModifier): shiftModifier_keys})
	return
}
Greek_comma(key)
{
	Greek_handleFinalSigma()
	shiftModifier_keys := Greek_shiftModifier_comma()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}
Greek_period(key)
{
	Greek_handleFinalSigma()
	shiftModifier_keys := Greek_shiftModifier_period()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}
Greek_slash(key)
{
	if (!shiftDownNoUp)
	{
		if (Greek_vowel = "")
		{
			return
		}
		Greek_priorState := [Greek_breathing, Greek_accent, Greek_quantity]
		if (Greek_accent = "acute")
		{
			Greek_accent := ""
		}
		else
		{
			Greek_accent := "acute"
		}
		Greek_addDiacritic()
	}
	else
	{
		Greek_handleFinalSigma()
		SendInput `;
	}
	return
}


Greek_Space(key)
{
	Greek_handleFinalSigma()
	layerIndependent("Space")
	return
}
Greek_AppsKey(key)
{
	shiftModifier_keys := Greek_shiftModifier_AppsKey()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}


Greek_Left(key)
{
	shiftModifier_keys := Greek_shiftModifier_Left()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}
Greek_Down(key)
{
	shiftModifier_keys := Greek_shiftModifier_Down()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}
Greek_Up(key)
{
	shiftModifier_keys := Greek_shiftModifier_Up()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}
Greek_Right(key)
{
	shiftModifier_keys := Greek_shiftModifier_Right()
	dual.comboKey(key, {(shiftModifier): shiftModifier_keys})
	return
}