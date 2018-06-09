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

; Setup Diacritic aliases
;-------------------------------------------------

; Diacritic declarations        ; Unicode descriptions
;-------------------------------;---------------------------
global grave := "U+0300" 		; combining grave accent varia
global acute := "U+0301" 		; combining acute accent tonos, oxia
global macron := "U+0304" 		; combining macron
global breve := "U+0306" 		; combining breve
global diaeresis := "U+0308" 	; combining diaeresis dialytika
global smooth := "U+0313" 		; combining comma above psili, smooth breathing mark
global rough := "U+0314" 		; combining reversed comma above dasia, rough breathing mark
global circumflex := "U+0342" 	; combining greek perispomeni circumflex, tilde, inverted breve
global koronis := "U+0343" 		; combining greek koronis comma above
global iota_sub := "U+0345" 	; combining greek ypogegrammeni iota subscript

; Setup Variables
;-------------------------------------------------

; Variable declarations   ; Possible options
;-------------------------;---------------------------------
global capital := false   ; false true
global vowel := ""        ; "" a e h i o u w
global breathing := ""    ; "" smooth rough
global accent := ""       ; "" acute grave circumflex
global subscript := ""    ; "" iota

; Import Functions
;-------------------------------------------------

#Include <greek_functions>
#Include <shared_functions>
  
; Create remapping layer
;-------------------------------------------------

*CapsLock::dual.comboKey("VK88 Down", {VK88: "VK88 Up"})

*a::
  capital := getShiftState()
  vowel := "a"
  dual.comboKey({VK88: "α", Shift: "Α"})
  return
*b::
  resetDiacritics()
  dual.comboKey({VK88: "β", Shift: "Β"})
  return
*g::
  resetDiacritics()
  dual.comboKey({VK88: "γ", Shift: "Γ"})
  return
*d::
  resetDiacritics()
  dual.comboKey({VK88: "δ", Shift: "Δ"})
  return
*e::
  capital := getShiftState()
  vowel := "e"
  dual.comboKey({VK88: "ε", Shift: "Ε"})
  return
*z::
  resetDiacritics()
  dual.comboKey({VK88: "ζ", Shift: "Ζ"})
  return
*h::
  capital := getShiftState()
  vowel := "h"
  dual.comboKey({VK88: "η", Shift: "Η"})
  return
*j::
  resetDiacritics()
  dual.comboKey({VK88: "θ", Shift: "Θ"})
  return
*i::
  capital := getShiftState()
  vowel := "i"
  dual.comboKey({VK88: "ι", Shift: "Ι"})
  return
*k::
  resetDiacritics()
  dual.comboKey({VK88: "κ", Shift: "Κ"})
  return
*l::
  resetDiacritics()
  dual.comboKey({VK88: "λ", Shift: "Λ"})
  return
*m::
  resetDiacritics()
  dual.comboKey({VK88: "μ", Shift: "Μ"})
  return
*n::
  resetDiacritics()
  dual.comboKey({VK88: "ν", Shift: "Ν"})
  return
*x::
  resetDiacritics()
  dual.comboKey({VK88: "ξ", Shift: "Ξ"})
  return
*o::
  capital := getShiftState()
  vowel := "o"
  dual.comboKey({VK88: "ο", Shift: "Ο"})
  return
*p::
  resetDiacritics()
  dual.comboKey({VK88: "π", Shift: "Π"})
  return
*r::
  resetDiacritics()
  dual.comboKey({VK88: "ρ", Shift: "Ρ"})
  return
*s::
  resetDiacritics()
  dual.comboKey({VK88: "σ", Shift: "Σ"})
  return
*t::
  resetDiacritics()
  dual.comboKey({VK88: "τ", Shift: "Τ"})
  return
*u::
  capital := getShiftState()
  vowel := "u"
  dual.comboKey({VK88: "υ", Shift: "Υ"})
  return
*f::
  resetDiacritics()
  dual.comboKey({VK88: "φ", Shift: "Φ"})
  return
*c::
  resetDiacritics()
  dual.comboKey({VK88: "χ", Shift: "Χ"})
  return
*y::
  resetDiacritics()
  dual.comboKey({VK88: "ψ", Shift: "Ψ"})
  return
*w::
  capital := getShiftState()
  vowel := "w"
  dual.comboKey({VK88: "ω", Shift: "Ω"})
  return
*v::
  resetDiacritics()
  dual.comboKey({VK88: "ϝ", Shift: "Ϝ"})
  return
*q::
  resetDiacritics()
  dual.comboKey({VK88: "ϙ", Shift: "Ϙ"})
  return




*'::
  if (vowel = "")
  {
    return
  }
  if (accent = "acute")
  {
    accent := ""
  }
  else
  {
    accent := "acute"
  }
  addDiacritic()
  return

*`::
  if (vowel = "")
  {
    return
  }
  if (GetKeyState("RShift") or GetKeyState("LShift"))
  {
    if (accent = "circumflex")
    {
      accent := ""
    }
    else
    {
      accent := "circumflex"
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

*/::
  if (vowel = "")
  {
    return
  }
  if (subscript = "iota")
  {
    subscript := ""
  }
  else
  {
    subscript := "iota"
  }
  addDiacritic()
  return

*[::
  if (vowel = "")
  {
    return
  }
  if (breathing = "rough")
  {
    breathing := ""
  }
  else
  {
    breathing := "rough"
  }
  addDiacritic()
  return

*]::
  if (vowel = "")
  {
    return
  }
  if (breathing = "smooth")
  {
    breathing := ""
  }
  else
  {
    breathing := "smooth"
  }
  addDiacritic()
  return
  
*5::
  if (vowel = "")
  {
    return
  }
  if (GetKeyState("RShift") or GetKeyState("LShift"))
  {
    if (breathing = "diaeresis")
    {
      breathing := ""
    }
    else
    {
      breathing := "diaeresis"
    }
	addDiacritic()
	return
  }
  else
  {
	return
  }

*Backspace::
  resetDiacritics()
  SendInput {Backspace}
  return



