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

  else if (vowel = "e")
  {
    SendInput έ
  }
  else if (vowel = "h")
  {
    SendInput ή
  }
  else if (vowel = "i")
  {
    SendInput ί
  }
  else if (vowel = "o")
  {
    SendInput ό
  }
  else if (vowel = "u")
  {
    SendInput ύ
  }
  else if (vowel = "w")
  {
    SendInput ώ
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
  SendInput Backspace
  return

#If


