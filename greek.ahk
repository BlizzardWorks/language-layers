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

; Setup diacritic and special punctuation aliases
;-------------------------------------------------

; Declarations					; Unicode descriptions
;-------------------------------;---------------------------
global grave := "{U+0300}" 		; combining grave accent varia
global acute := "{U+0301}" 		; combining acute accent tonos, oxia
global macron := "{U+0304}" 	; combining macron
global breve := "{U+0306}" 		; combining breve
global diaeresis := "{U+0308}" 	; combining diaeresis dialytika
global smooth := "{U+0313}" 	; combining comma above psili, smooth breathing mark
global rough := "{U+0314}" 		; combining reversed comma above dasia, rough breathing mark
global circumflex := "{U+0342}" ; combining greek perispomeni circumflex, tilde, inverted breve
global koronis := "{U+0343}" 	; combining greek koronis comma above
global iotaSub := "{U+0345}" 	; combining greek ypogegrammeni iota subscript

global middleDot := "{U+00B7}"	; Greek colon or high dot (Latin middle dot)


; Setup Variables
;-------------------------------------------------

; Variable declarations	 	; Possible options
;---------------------------;-------------------------------
global capital := false	 	; false true
global vowel := ""			; "" a e h i o u w
global breathing := ""		; "" smooth rough
global accent := ""			; "" acute grave circumflex
global quantity := ""		; "" iota macron breve


; Keep track of character compositions to always make backspace delete the last full character
; rather than a single diacritic
global lastDiacriticKey := A_TickCount
global numKeysToBackspace := 1

; Keep track of previous diacritic state so that if an invalid diacritic sequence
; is entered, the state can be rolled back
global priorState := [breathing, accent, quantity]


; Import Functions
;-------------------------------------------------

#Include <greek_functions>
#Include <shared_functions>
	
; Create remapping layer
;-------------------------------------------------


; Letters
;-----------------------------

*a::
	capital := getShiftState()
	vowel := "a"
	resetDiacritics()
	dual.comboKey("α", {Shift: "Α"})
	return
*b::
	resetVowel()
	dual.comboKey("β", {Shift: "Β"})
	return
*g::
	resetVowel()
	dual.comboKey("γ", {Shift: "Γ"})
	return
*d::
	resetVowel()
	dual.comboKey("δ", {Shift: "Δ"})
	return
*e::
	capital := getShiftState()
	vowel := "e"
	resetDiacritics()
	dual.comboKey("ε", {Shift: "Ε"})
	return
*z::
	resetVowel()
	dual.comboKey("ζ", {Shift: "Ζ"})
	return
*h::
	capital := getShiftState()
	vowel := "h"
	resetDiacritics()
	dual.comboKey("η", {Shift: "Η"})
	return
*j::
	resetVowel()
	dual.comboKey("θ", {Shift: "Θ"})
	return
*i::
	capital := getShiftState()
	vowel := "i"
	resetDiacritics()
	dual.comboKey("ι", {Shift: "Ι"})
	return
*k::
	resetVowel()
	dual.comboKey("κ", {Shift: "Κ"})
	return
*l::
	resetVowel()
	dual.comboKey("λ", {Shift: "Λ"})
	return
*m::
	resetVowel()
	dual.comboKey("μ", {Shift: "Μ"})
	return
*n::
	resetVowel()
	dual.comboKey("ν", {Shift: "Ν"})
	return
*x::
	resetVowel()
	dual.comboKey("ξ", {Shift: "Ξ"})
	return
*o::
	capital := getShiftState()
	vowel := "o"
	resetDiacritics()
	dual.comboKey("ο", {Shift: "Ο"})
	return
*p::
	resetVowel()
	dual.comboKey("π", {Shift: "Π"})
	return
*r::
	capital := getShiftState()
	vowel := "r"
	resetDiacritics()
	dual.comboKey("ρ", {Shift: "Ρ"})
	return
*s::
	resetVowel()
	dual.comboKey("σ", {Shift: "Σ"})
	return
*t::
	resetVowel()
	dual.comboKey("τ", {Shift: "Τ"})
	return
*u::
	capital := getShiftState()
	vowel := "u"
	resetDiacritics()
	dual.comboKey("υ", {Shift: "Υ"})
	return
*f::
	resetVowel()
	dual.comboKey("φ", {Shift: "Φ"})
	return
*c::
	resetVowel()
	dual.comboKey("χ", {Shift: "Χ"})
	return
*y::
	resetVowel()
	dual.comboKey("ψ", {Shift: "Ψ"})
	return
*w::
	capital := getShiftState()
	vowel := "w"
	dual.comboKey("ω", {Shift: "Ω"})
	return
*v::
	resetVowel()
	dual.comboKey("ϝ", {Shift: "Ϝ"})
	return
*q::
	resetVowel()
	dual.comboKey("ϙ", {Shift: "Ϙ"})
	return
	

; Diacritics (+ middle Dot = semicolon, semicolon = question mark)
;-----------------------------

*/::
	if (getShiftState())
	{
		HandleFinalSigma()
		SendInput `;
	}
	else
	{
		if (vowel = "")
		{
			return
		}
		priorState := [breathing, accent, quantity]
		if (accent = "acute")
		{
			accent := ""
		}
		else
		{
			accent := "acute"
		}
		addDiacritic()
	}
	return


*\::
	if (vowel = "")
	{
		return
	}
	priorState := [breathing, accent, quantity]
	if (getShiftState())
	{
		if (quantity = "iota")
		{
			quantity := ""
		}
		else
		{
			quantity := "iota"
		}
	}
	else
	{
		if (accent = "grave")
		{
			accent := ""
		}
		else
		{
			accent := "grave"
		}
	}
	addDiacritic()
	return
	
*=::
	if (vowel = "")
	{
		return
	}
	priorState := [breathing, accent, quantity]
	if (accent = "circumflex")
	{
	accent := ""
	}
	else
	{
		accent := "circumflex"
	}
	addDiacritic()
	return

*[::
	if (vowel = "")
	{
		return
	}
	priorState := [breathing, accent, quantity]
	if (getShiftState())
	{
		if (quantity = "macron")
		{
			quantity := ""
		}
		else
		{
			quantity := "macron"
		}
	}
	else
	{
		if (breathing = "rough")
		{
			breathing := ""
		}
		else
		{
			breathing := "rough"
		}
	}
	addDiacritic()
	return

*]::
	if (vowel = "")
	{
		return
	}
	priorState := [breathing, accent, quantity]
	if (getShiftState())
	{
		if (quantity = "breve")
		{
			quantity := ""
		}
		else
		{
			quantity := "breve"
		}
	}
	else
	{
		if (breathing = "smooth")
		{
			breathing := ""
		}
		else
		{
			breathing := "smooth"
		}
	}
	addDiacritic()
	return
	
*;::
	if (getShiftState())
	{
		if (vowel = "")
		{
			return
		}
		priorState := [breathing, accent, quantity]
		if (breathing = "diaeresis")
		{
			breathing := ""
		}
		else
		{
			breathing := "diaeresis"
		}
		addDiacritic()
	}
	else
	{
		HandleFinalSigma()
		SendInput %middleDot%
	}
	return

	
	
; Word boundaries (important for final sigma)
;-----------------------------

*Tab::
	HandleFinalSigma()
	dual.comboKey()
	return
	
*Enter::
	HandleFinalSigma()
	dual.comboKey()
	return
	
*Space::
	HandleFinalSigma()
	dual.comboKey()
	return

*,::
	HandleFinalSigma()
	dual.comboKey()
	return
	
*.::
	HandleFinalSigma()
	dual.comboKey()
	return
	
*'::
	; Quotes should trigger final sigma, but apostrophe indicating
	; elision should not.
	if (getShiftState())
	{
		HandleFinalSigma()
	}
	dual.comboKey()
	return
	
*0::
	; Closing parentheses should trigger final sigma
	if (getShiftState())
	{
		HandleFinalSigma()
	}
	dual.comboKey()
	return
	
	
; Other
;-----------------------------

*Backspace::
	resetVowel()
	deleteLastFullCharacter()
	return



