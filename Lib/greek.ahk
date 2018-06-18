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
	dual.comboKey(key)
	return
}
Greek_F1(key)
{
	dual.comboKey(key)
	return
}
Greek_F2(key)
{
	dual.comboKey(key)
	return
}
Greek_F3(key)
{
	dual.comboKey(key)
	return
}
Greek_F4(key)
{
	dual.comboKey(key)
	return
}
Greek_F5(key)
{
	dual.comboKey(key)
	return
}
Greek_F6(key)
{
	dual.comboKey(key)
	return
}
Greek_F7(key)
{
	dual.comboKey(key)
	return
}
Greek_F8(key)
{
	dual.comboKey(key)
	return
}
Greek_F9(key)
{
	dual.comboKey(key)
	return
}
Greek_F10(key)
{
	dual.comboKey(key)
	return
}
Greek_F11(key)
{
	dual.comboKey(key)
	return
}
Greek_F12(key)
{
	dual.comboKey(key)
	return
}


Greek_backtick(key)
{
	dual.comboKey(key)
	return
}
Greek_1(key)
{
	dual.comboKey(key)
	return
}
Greek_2(key)
{
	dual.comboKey(key)
	return
}
Greek_3(key)
{
	dual.comboKey(key)
	return
}
Greek_4(key)
{
	dual.comboKey(key)
	return
}
Greek_5(key)
{
	dual.comboKey(key)
	return
}
Greek_6(key)
{
	dual.comboKey(key)
	return
}
Greek_7(key)
{
	dual.comboKey(key)
	return
}
Greek_8(key)
{
	dual.comboKey(key)
	return
}
Greek_9(key)
{
	dual.comboKey(key)
	return
}
Greek_0(key)
{
	; Closing parentheses should trigger final sigma
	if (getShiftState())
	{
		Greek_handleFinalSigma()
	}
	dual.comboKey(key)
	return
}
Greek_hyphen(key)
{
	dual.comboKey(key)
	return
}
Greek_equals(key)
{
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
	return
}
Greek_Backspace(key)
{
	Greek_resetVowel()
	deleteLastFullCharacter()
	return
}


Greek_Tab(key)
{
	Greek_handleFinalSigma()
	dual.comboKey(key)
	return
}
Greek_q(key)
{
	Greek_resetVowel()
	dual.comboKey("ϙ", {Shift: "Ϙ"})
	return
}
Greek_w(key)
{
	Greek_capital := getShiftState()
	Greek_vowel := "w"
	dual.comboKey("ω", {Shift: "Ω"})
	return
}
Greek_e(key)
{
	Greek_capital := getShiftState()
	Greek_vowel := "e"
	Greek_resetDiacritics()
	dual.comboKey("ε", {Shift: "Ε"})
	return
}
Greek_r(key)
{
	Greek_capital := getShiftState()
	Greek_vowel := "r"
	Greek_resetDiacritics()
	dual.comboKey("ρ", {Shift: "Ρ"})
	return
}
Greek_t(key)
{
	Greek_resetVowel()
	dual.comboKey("τ", {Shift: "Τ"})
	return
}
Greek_y(key)
{
	Greek_resetVowel()
	dual.comboKey("ψ", {Shift: "Ψ"})
	return
}
Greek_u(key)
{
	Greek_capital := getShiftState()
	Greek_vowel := "u"
	Greek_resetDiacritics()
	dual.comboKey("υ", {Shift: "Υ"})
	return
}
Greek_i(key)
{
	Greek_capital := getShiftState()
	Greek_vowel := "i"
	Greek_resetDiacritics()
	dual.comboKey("ι", {Shift: "Ι"})
	return
}
Greek_o(key)
{
	Greek_capital := getShiftState()
	Greek_vowel := "o"
	Greek_resetDiacritics()
	dual.comboKey("ο", {Shift: "Ο"})
	return
}
Greek_p(key)
{
	Greek_resetVowel()
	dual.comboKey("π", {Shift: "Π"})
	return
}
Greek_openBracket(key)
{
	if (Greek_vowel = "")
	{
		return
	}
	Greek_priorState := [Greek_breathing, Greek_accent, Greek_quantity]
	if (getShiftState())
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
	else
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
	if (getShiftState())
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
	else
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
	if (getShiftState())
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
	else
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
	Greek_addDiacritic()
	return
}


Greek_CapsLock(key)
{
	dual.comboKey(key)
	return
}
Greek_a(key)
{
	Greek_capital := getShiftState()
	Greek_vowel := "a"
	Greek_resetDiacritics()
	dual.comboKey("α", {Shift: "Α"})
	return
}
Greek_s(key)
{
	Greek_resetVowel()
	dual.comboKey("σ", {Shift: "Σ"})
	return
}
Greek_d(key)
{
	Greek_resetVowel()
	dual.comboKey("δ", {Shift: "Δ"})
	return
}
Greek_f(key)
{
	Greek_resetVowel()
	dual.comboKey("φ", {Shift: "Φ"})
	return
}
Greek_g(key)
{
	Greek_resetVowel()
	dual.comboKey("γ", {Shift: "Γ"})
	return
}
Greek_h(key)
{
	Greek_capital := getShiftState()
	Greek_vowel := "h"
	Greek_resetDiacritics()
	dual.comboKey("η", {Shift: "Η"})
	return
}
Greek_j(key)
{
	Greek_resetVowel()
	dual.comboKey("θ", {Shift: "Θ"})
	return
}
Greek_k(key)
{
	Greek_resetVowel()
	dual.comboKey("κ", {Shift: "Κ"})
	return
}
Greek_l(key)
{
	Greek_resetVowel()
	dual.comboKey("λ", {Shift: "Λ"})
	return
}
Greek_semicolon(key)
{
	if (getShiftState())
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
	else
	{
		Greek_handleFinalSigma()
		SendInput %middleDot%
	}
	return
}
Greek_apostrophe(key)
{
	; Quotes should trigger final sigma, but apostrophe indicating
	; elision should not.
	if (getShiftState())
	{
		Greek_handleFinalSigma()
	}
	dual.comboKey(key)
	return
}
Greek_Enter(key)
{
	Greek_handleFinalSigma()
	dual.comboKey(key)
	return
}


Greek_z(key)
{
	Greek_resetVowel()
	dual.comboKey("ζ", {Shift: "Ζ"})
	return
}
Greek_x(key)
{
	Greek_resetVowel()
	dual.comboKey("ξ", {Shift: "Ξ"})
	return
}
Greek_c(key)
{
	Greek_resetVowel()
	dual.comboKey("χ", {Shift: "Χ"})
	return
}
Greek_v(key)
{
	Greek_resetVowel()
	dual.comboKey("ϝ", {Shift: "Ϝ"})
	return
}
Greek_b(key)
{
	Greek_resetVowel()
	dual.comboKey("β", {Shift: "Β"})
	return
}
Greek_n(key)
{
	Greek_resetVowel()
	dual.comboKey("ν", {Shift: "Ν"})
	return
}
Greek_m(key)
{
	Greek_resetVowel()
	dual.comboKey("μ", {Shift: "Μ"})
	return
}
Greek_comma(key)
{
	Greek_handleFinalSigma()
	dual.comboKey(key)
	return
}
Greek_period(key)
{
	Greek_handleFinalSigma()
	dual.comboKey(key)
	return
}
Greek_slash(key)
{
	if (getShiftState())
	{
		Greek_handleFinalSigma()
		SendInput `;
	}
	else
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
	return
}


Greek_Space(key)
{
	Greek_handleFinalSigma()
	dual.comboKey(key)
	return
}
Greek_AppsKey(key)
{
	dual.comboKey(key)
	return
}


Greek_Left(key)
{
	dual.comboKey(key)
	return
}
Greek_Down(key)
{
	dual.comboKey(key)
	return
}
Greek_Up(key)
{
	dual.comboKey(key)
	return
}
Greek_Right(key)
{
	dual.comboKey(key)
	return
}