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

; Setup Variables
;-------------------------------------------------

; Variable declarations   ; Possible options
;-------------------------;---------------------------------
global vowel := ""        ; "" a e h i o u w
global breathing := ""    ; "" smooth rough
global accent := ""       ; "" acute grave circumflex
global subscript := ""    ; "" iota

; Define Functions
;-------------------------------------------------

addDiacritic() {

  if (vowel = "a")
  {
    if (breathing = "")
    {
       if (accent = "")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ᾳ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}α
          }
       }
       else if (accent = "acute")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ᾴ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ά
          }
       }
       else if (accent = "grave")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ᾲ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ὰ
          }
       }
       else if (accent = "circumflex")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ᾷ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ᾶ
          }
       }
    }
    else if (breathing = "smooth")
    {
       if (accent = "")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ᾀ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ἀ
          }
       }
       else if (accent = "acute")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ᾄ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ἄ
          }
       }
       else if (accent = "grave")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ᾂ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ἂ
          }
       }
       else if (accent = "circumflex")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ᾆ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ἆ
          }
       }
    }
    else if (breathing = "rough")
    {
       if (accent = "")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ᾁ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ἁ
          }
       }
       else if (accent = "acute")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ᾅ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ἅ
          }
       }
       else if (accent = "grave")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ᾃ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ἃ
          }
       }
       else if (accent = "circumflex")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ᾇ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ἇ
          }
       }
    }
  }
  
  if (vowel = "e")
  {
    if (breathing = "")
    {
       if (accent = "")
       {
		  SendInput {Backspace}ε
       }
       else if (accent = "acute")
       {
		  SendInput {Backspace}έ
       }
       else if (accent = "grave")
       {
		  SendInput {Backspace}ὲ
       }
    }
    else if (breathing = "smooth")
    {
       if (accent = "")
       {
		  SendInput {Backspace}ἐ
       }
       else if (accent = "acute")
       {
		  SendInput {Backspace}ἔ
       }
       else if (accent = "grave")
       {
		  SendInput {Backspace}ἒ
       }
    }
    else if (breathing = "rough")
    {
       if (accent = "")
       {
		  SendInput {Backspace}ἑ
       }
       else if (accent = "acute")
       {
		  SendInput {Backspace}ἕ
       }
       else if (accent = "grave")
       {
		  SendInput {Backspace}ἓ
       }
    }
  }
  
  if (vowel = "h")
  {
    if (breathing = "")
    {
       if (accent = "")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ῃ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}η
          }
       }
       else if (accent = "acute")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ῄ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ή
          }
       }
       else if (accent = "grave")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ῂ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ὴ
          }
       }
       else if (accent = "circumflex")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ῇ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ῆ
          }
       }
    }
    else if (breathing = "smooth")
    {
       if (accent = "")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ᾐ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ἠ
          }
       }
       else if (accent = "acute")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ᾔ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ἤ
          }
       }
       else if (accent = "grave")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ᾒ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ἢ
          }
       }
       else if (accent = "circumflex")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ᾖ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ἦ
          }
       }
    }
    else if (breathing = "rough")
    {
       if (accent = "")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ᾑ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ἡ
          }
       }
       else if (accent = "acute")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ᾕ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ἥ
          }
       }
       else if (accent = "grave")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ᾓ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ἣ
          }
       }
       else if (accent = "circumflex")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ᾗ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ἧ
          }
       }
    }
  }
  
  if (vowel = "i")
  {
    if (breathing = "")
    {
       if (accent = "")
       {
		  SendInput {Backspace}ι
       }
       else if (accent = "acute")
       {
		  SendInput {Backspace}ί
       }
       else if (accent = "grave")
       {
		  SendInput {Backspace}ὶ
       }
       else if (accent = "circumflex")
       {
		  SendInput {Backspace}ῖ
       }
    }
    else if (breathing = "smooth")
    {
       if (accent = "")
       {
		  SendInput {Backspace}ἰ
       }
       else if (accent = "acute")
       {
		  SendInput {Backspace}ἴ
       }
       else if (accent = "grave")
       {
		  SendInput {Backspace}ἲ
       }
       else if (accent = "circumflex")
        {
		  SendInput {Backspace}ἶ
       }
    }
    else if (breathing = "rough")
    {
       if (accent = "")
       {
		  SendInput {Backspace}ἱ
       }
       else if (accent = "acute")
       {
		  SendInput {Backspace}ἵ
       }
       else if (accent = "grave")
       {
		  SendInput {Backspace}ἳ
       }
       else if (accent = "circumflex")
       {
		  SendInput {Backspace}ἷ
       }
    }
  }
  
  if (vowel = "o")
  {
    if (breathing = "")
    {
       if (accent = "")
       {
		  SendInput {Backspace}ο
       }
       else if (accent = "acute")
       {
		  SendInput {Backspace}ό
       }
       else if (accent = "grave")
       {
		  SendInput {Backspace}ὸ
       }
    }
    else if (breathing = "smooth")
    {
       if (accent = "")
       {
		  SendInput {Backspace}ὀ
       }
       else if (accent = "acute")
       {
		  SendInput {Backspace}ὄ
       }
       else if (accent = "grave")
       {
		  SendInput {Backspace}ὂ
       }
    }
    else if (breathing = "rough")
    {
       if (accent = "")
       {
		  SendInput {Backspace}ὁ
       }
       else if (accent = "acute")
       {
		  SendInput {Backspace}ὅ
       }
       else if (accent = "grave")
       {
		  SendInput {Backspace}ὃ
       }
    }
  }
  
  if (vowel = "u")
  {
    if (breathing = "")
    {
       if (accent = "")
       {
		  SendInput {Backspace}υ
       }
       else if (accent = "acute")
       {
		  SendInput {Backspace}ύ
       }
       else if (accent = "grave")
       {
		  SendInput {Backspace}ὺ
       }
       else if (accent = "circumflex")
       {
		  SendInput {Backspace}ῦ
       }
    }
    else if (breathing = "smooth")
    {
       if (accent = "")
       {
		  SendInput {Backspace}ὐ
       }
       else if (accent = "acute")
       {
		  SendInput {Backspace}ὔ
       }
       else if (accent = "grave")
       {
		  SendInput {Backspace}ὒ
       }
       else if (accent = "circumflex")
        {
		  SendInput {Backspace}ὖ
       }
    }
    else if (breathing = "rough")
    {
       if (accent = "")
       {
		  SendInput {Backspace}ὑ
       }
       else if (accent = "acute")
       {
		  SendInput {Backspace}ὕ
       }
       else if (accent = "grave")
       {
		  SendInput {Backspace}ὓ
       }
       else if (accent = "circumflex")
       {
		  SendInput {Backspace}ὗ
       }
    }
  }
  
  if (vowel = "w")
  {
    if (breathing = "")
    {
       if (accent = "")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ῳ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ω
          }
       }
       else if (accent = "acute")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ῴ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ώ
          }
       }
       else if (accent = "grave")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ῲ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ὼ
          }
       }
       else if (accent = "circumflex")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ῷ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ῶ
          }
       }
    }
    else if (breathing = "smooth")
    {
       if (accent = "")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ᾠ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ὠ
          }
       }
       else if (accent = "acute")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ᾤ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ὤ
          }
       }
       else if (accent = "grave")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ᾢ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ὢ
          }
       }
       else if (accent = "circumflex")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ᾦ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ὦ
          }
       }
    }
    else if (breathing = "rough")
    {
       if (accent = "")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ᾡ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ὡ
          }
       }
       else if (accent = "acute")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ᾥ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ὥ
          }
       }
       else if (accent = "grave")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ᾣ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ὣ
          }
       }
       else if (accent = "circumflex")
       {
          if (subscript = "iota")
          {
            SendInput {Backspace}ᾧ
          }
          else if (subscript = "")
          {
            SendInput {Backspace}ὧ
          }
       }
    }
  }
  
  return
}

resetDiacritics() {
  vowel := ""
  breathing := ""
  accent := ""
  subscript := ""
}

; Create remapping layer
;-------------------------------------------------

#If true ; Override defaults.ahk. There will be "duplicate hotkey" errors otherwise.

CapsLock::dual.comboKey("VK88 Down", {VK88: "VK88 Up"})

a::
  vowel := "a"
  dual.comboKey({VK88: "α", Shift: "Α"})
  return
b::
  resetDiacritics()
  dual.comboKey({VK88: "β", Shift: "Β"})
  return
g::
  resetDiacritics()
  dual.comboKey({VK88: "γ", Shift: "Γ"})
  return
d::
  resetDiacritics()
  dual.comboKey({VK88: "δ", Shift: "Δ"})
  return
e::
  vowel := "e"
  dual.comboKey({VK88: "ε", Shift: "Ε"})
  return
z::
  resetDiacritics()
  dual.comboKey({VK88: "ζ", Shift: "Ζ"})
  return
h::
  vowel := "h"
  dual.comboKey({VK88: "η", Shift: "Η"})
  return
j::
  resetDiacritics()
  dual.comboKey({VK88: "θ", Shift: "Θ"})
  return
i::
  vowel := "i"
  dual.comboKey({VK88: "ι", Shift: "Ι"})
  return
k::
  resetDiacritics()
  dual.comboKey({VK88: "κ", Shift: "Κ"})
  return
l::
  resetDiacritics()
  dual.comboKey({VK88: "λ", Shift: "Λ"})
  return
m::
  resetDiacritics()
  dual.comboKey({VK88: "μ", Shift: "Μ"})
  return
n::
  resetDiacritics()
  dual.comboKey({VK88: "ν", Shift: "Ν"})
  return
x::
  resetDiacritics()
  dual.comboKey({VK88: "ξ", Shift: "Ξ"})
  return
o::
  vowel := "o"
  dual.comboKey({VK88: "ο", Shift: "Ο"})
  return
p::
  resetDiacritics()
  dual.comboKey({VK88: "π", Shift: "Π"})
  return
r::
  resetDiacritics()
  dual.comboKey({VK88: "ρ", Shift: "Ρ"})
  return
s::
  resetDiacritics()
  dual.comboKey({VK88: "σ", Shift: "Σ"})
  return
t::
  resetDiacritics()
  dual.comboKey({VK88: "τ", Shift: "Τ"})
  return
u::
  vowel := "u"
  dual.comboKey({VK88: "υ", Shift: "Υ"})
  return
f::
  resetDiacritics()
  dual.comboKey({VK88: "φ", Shift: "Φ"})
  return
c::
  resetDiacritics()
  dual.comboKey({VK88: "χ", Shift: "Χ"})
  return
y::
  resetDiacritics()
  dual.comboKey({VK88: "ψ", Shift: "Ψ"})
  return
w::
  vowel := "w"
  dual.comboKey({VK88: "ω", Shift: "Ω"})
  return
v::
  resetDiacritics()
  dual.comboKey({VK88: "ϝ", Shift: "Ϝ"})
  return
q::
  resetDiacritics()
  dual.comboKey({VK88: "ϙ", Shift: "Ϙ"})
  return




'::
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

`::
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

/::
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

[::
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

]::
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

Backspace::
  resetDiacritics()
  SendInput {Backspace}
  return

#If


