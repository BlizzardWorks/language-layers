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

; Define Functions
;-------------------------------------------------

addDiacritic() {

  if (capital) {
	if (vowel = "a")
	  {
		if (breathing = "")
		{
		   if (accent = "")
		   {
			  if (subscript = "iota")
			  {
				SendInput {Backspace}ᾼ
			  }
			  else if (subscript = "")
			  {
				SendInput {Backspace}Α
			  }
		   }
		   else if (accent = "acute")
		   {
		     SendInput {Backspace}Ά
		   }
		   else if (accent = "grave")
		   {
			 SendInput {Backspace}Ὰ
		   }
		}
		else if (breathing = "smooth")
		{
		   if (accent = "")
		   {
			  if (subscript = "iota")
			  {
				SendInput {Backspace}ᾈ
			  }
			  else if (subscript = "")
			  {
				SendInput {Backspace}Ἀ
			  }
		   }
		   else if (accent = "acute")
		   {
			  if (subscript = "iota")
			  {
				SendInput {Backspace}ᾌ
			  }
			  else if (subscript = "")
			  {
				SendInput {Backspace}Ἄ
			  }
		   }
		   else if (accent = "grave")
		   {
			  if (subscript = "iota")
			  {
				SendInput {Backspace}ᾊ
			  }
			  else if (subscript = "")
			  {
				SendInput {Backspace}Ἂ
			  }
		   }
		   else if (accent = "circumflex")
		   {
			  if (subscript = "iota")
			  {
				SendInput {Backspace}ᾎ
			  }
			  else if (subscript = "")
			  {
				SendInput {Backspace}Ἆ
			  }
		   }
		}
		else if (breathing = "rough")
		{
		   if (accent = "")
		   {
			  if (subscript = "iota")
			  {
				SendInput {Backspace}ᾉ
			  }
			  else if (subscript = "")
			  {
				SendInput {Backspace}Ἁ
			  }
		   }
		   else if (accent = "acute")
		   {
			  if (subscript = "iota")
			  {
				SendInput {Backspace}ᾍ
			  }
			  else if (subscript = "")
			  {
				SendInput {Backspace}Ἅ
			  }
		   }
		   else if (accent = "grave")
		   {
			  if (subscript = "iota")
			  {
				SendInput {Backspace}ᾋ
			  }
			  else if (subscript = "")
			  {
				SendInput {Backspace}Ἃ
			  }
		   }
		   else if (accent = "circumflex")
		   {
			  if (subscript = "iota")
			  {
				SendInput {Backspace}ᾏ
			  }
			  else if (subscript = "")
			  {
				SendInput {Backspace}Ἇ
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
			  SendInput {Backspace}Ε
		   }
		   else if (accent = "acute")
		   {
			  SendInput {Backspace}Έ
		   }
		   else if (accent = "grave")
		   {
			  SendInput {Backspace}Ὲ
		   }
		}
		else if (breathing = "smooth")
		{
		   if (accent = "")
		   {
			  SendInput {Backspace}Ἐ
		   }
		   else if (accent = "acute")
		   {
			  SendInput {Backspace}Ἔ
		   }
		   else if (accent = "grave")
		   {
			  SendInput {Backspace}Ἒ
		   }
		}
		else if (breathing = "rough")
		{
		   if (accent = "")
		   {
			  SendInput {Backspace}Ἑ
		   }
		   else if (accent = "acute")
		   {
			  SendInput {Backspace}Ἕ
		   }
		   else if (accent = "grave")
		   {
			  SendInput {Backspace}Ἓ
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
				SendInput {Backspace}ῌ
			  }
			  else if (subscript = "")
			  {
				SendInput {Backspace}Η
			  }
		   }
		   else if (accent = "acute")
		   {
			 SendInput {Backspace}Ή
		   }
		   else if (accent = "grave")
		   {
			 SendInput {Backspace}Ὴ
		   }
		}
		else if (breathing = "smooth")
		{
		   if (accent = "")
		   {
			  if (subscript = "iota")
			  {
				SendInput {Backspace}ᾘ
			  }
			  else if (subscript = "")
			  {
				SendInput {Backspace}Ἠ
			  }
		   }
		   else if (accent = "acute")
		   {
			  if (subscript = "iota")
			  {
				SendInput {Backspace}ᾜ
			  }
			  else if (subscript = "")
			  {
				SendInput {Backspace}Ἤ
			  }
		   }
		   else if (accent = "grave")
		   {
			  if (subscript = "iota")
			  {
				SendInput {Backspace}ᾚ
			  }
			  else if (subscript = "")
			  {
				SendInput {Backspace}Ἢ
			  }
		   }
		   else if (accent = "circumflex")
		   {
			  if (subscript = "iota")
			  {
				SendInput {Backspace}ᾞ
			  }
			  else if (subscript = "")
			  {
				SendInput {Backspace}Ἦ
			  }
		   }
		}
		else if (breathing = "rough")
		{
		   if (accent = "")
		   {
			  if (subscript = "iota")
			  {
				SendInput {Backspace}ᾙ
			  }
			  else if (subscript = "")
			  {
				SendInput {Backspace}Ἡ
			  }
		   }
		   else if (accent = "acute")
		   {
			  if (subscript = "iota")
			  {
				SendInput {Backspace}ᾝ
			  }
			  else if (subscript = "")
			  {
				SendInput {Backspace}Ἥ
			  }
		   }
		   else if (accent = "grave")
		   {
			  if (subscript = "iota")
			  {
				SendInput {Backspace}ᾛ
			  }
			  else if (subscript = "")
			  {
				SendInput {Backspace}Ἣ
			  }
		   }
		   else if (accent = "circumflex")
		   {
			  if (subscript = "iota")
			  {
				SendInput {Backspace}ᾟ
			  }
			  else if (subscript = "")
			  {
				SendInput {Backspace}Ἧ
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
			  SendInput {Backspace}Ι
		   }
		   else if (accent = "acute")
		   {
			  SendInput {Backspace}Ί
		   }
		   else if (accent = "grave")
		   {
			  SendInput {Backspace}Ὶ
		   }
		}
		else if (breathing = "smooth")
		{
		   if (accent = "")
		   {
			  SendInput {Backspace}Ἰ
		   }
		   else if (accent = "acute")
		   {
			  SendInput {Backspace}Ἴ
		   }
		   else if (accent = "grave")
		   {
			  SendInput {Backspace}Ἲ
		   }
		   else if (accent = "circumflex")
			{
			  SendInput {Backspace}Ἶ
		   }
		}
		else if (breathing = "rough")
		{
		   if (accent = "")
		   {
			  SendInput {Backspace}Ἱ
		   }
		   else if (accent = "acute")
		   {
			  SendInput {Backspace}Ἵ
		   }
		   else if (accent = "grave")
		   {
			  SendInput {Backspace}Ἳ
		   }
		   else if (accent = "circumflex")
		   {
			  SendInput {Backspace}Ἷ
		   }
		}
		else if (breathing = "diaeresis")
		{
			SendInput {Backspace}Ϊ
		}
	  }
	  
	  if (vowel = "o")
	  {
		if (breathing = "")
		{
		   if (accent = "")
		   {
			  SendInput {Backspace}Ο
		   }
		   else if (accent = "acute")
		   {
			  SendInput {Backspace}Ό
		   }
		   else if (accent = "grave")
		   {
			  SendInput {Backspace}Ὸ
		   }
		}
		else if (breathing = "smooth")
		{
		   if (accent = "")
		   {
			  SendInput {Backspace}Ὀ
		   }
		   else if (accent = "acute")
		   {
			  SendInput {Backspace}Ὄ
		   }
		   else if (accent = "grave")
		   {
			  SendInput {Backspace}Ὂ
		   }
		}
		else if (breathing = "rough")
		{
		   if (accent = "")
		   {
			  SendInput {Backspace}Ὁ
		   }
		   else if (accent = "acute")
		   {
			  SendInput {Backspace}Ὅ
		   }
		   else if (accent = "grave")
		   {
			  SendInput {Backspace}Ὃ
		   }
		}
	  }
	  
	  if (vowel = "u")
	  {
		if (breathing = "")
		{
		   if (accent = "")
		   {
			  SendInput {Backspace}Υ
		   }
		   else if (accent = "acute")
		   {
			  SendInput {Backspace}Ύ
		   }
		   else if (accent = "grave")
		   {
			  SendInput {Backspace}Ὺ
		   }
		}
		else if (breathing = "rough")
		{
		   if (accent = "")
		   {
			  SendInput {Backspace}Ὑ
		   }
		   else if (accent = "acute")
		   {
			  SendInput {Backspace}Ὕ
		   }
		   else if (accent = "grave")
		   {
			  SendInput {Backspace}Ὓ
		   }
		   else if (accent = "circumflex")
		   {
			  SendInput {Backspace}Ὗ
		   }
		}
		else if (breathing = "diaeresis")
		{
			SendInput {Backspace}Ϋ
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
				SendInput {Backspace}ῼ
			  }
			  else if (subscript = "")
			  {
				SendInput {Backspace}Ω
			  }
		   }
		   else if (accent = "acute")
		   {
			 SendInput {Backspace}Ώ
		   }
		   else if (accent = "grave")
		   {
			 SendInput {Backspace}Ὼ
		   }
		}
		else if (breathing = "smooth")
		{
		   if (accent = "")
		   {
			  if (subscript = "iota")
			  {
				SendInput {Backspace}ᾨ
			  }
			  else if (subscript = "")
			  {
				SendInput {Backspace}Ὠ
			  }
		   }
		   else if (accent = "acute")
		   {
			  if (subscript = "iota")
			  {
				SendInput {Backspace}ᾬ
			  }
			  else if (subscript = "")
			  {
				SendInput {Backspace}Ὤ
			  }
		   }
		   else if (accent = "grave")
		   {
			  if (subscript = "iota")
			  {
				SendInput {Backspace}ᾪ
			  }
			  else if (subscript = "")
			  {
				SendInput {Backspace}Ὢ
			  }
		   }
		   else if (accent = "circumflex")
		   {
			  if (subscript = "iota")
			  {
				SendInput {Backspace}ᾮ
			  }
			  else if (subscript = "")
			  {
				SendInput {Backspace}Ὦ
			  }
		   }
		}
		else if (breathing = "rough")
		{
		   if (accent = "")
		   {
			  if (subscript = "iota")
			  {
				SendInput {Backspace}ᾩ
			  }
			  else if (subscript = "")
			  {
				SendInput {Backspace}Ὡ
			  }
		   }
		   else if (accent = "acute")
		   {
			  if (subscript = "iota")
			  {
				SendInput {Backspace}ᾭ
			  }
			  else if (subscript = "")
			  {
				SendInput {Backspace}Ὥ
			  }
		   }
		   else if (accent = "grave")
		   {
			  if (subscript = "iota")
			  {
				SendInput {Backspace}ᾫ
			  }
			  else if (subscript = "")
			  {
				SendInput {Backspace}Ὣ
			  }
		   }
		   else if (accent = "circumflex")
		   {
			  if (subscript = "iota")
			  {
				SendInput {Backspace}ᾯ
			  }
			  else if (subscript = "")
			  {
				SendInput {Backspace}Ὧ
			  }
		   }
		}
    }
  }
  
  else {
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
		else if (breathing = "diaeresis")
		{
		   if (accent = "")
		   {
			  SendInput {Backspace}ϊ
		   }
		   else if (accent = "acute")
		   {
			  SendInput {Backspace}ΐ
		   }
		   else if (accent = "grave")
		   {
			  SendInput {Backspace}ῒ
		   }
		   else if (accent = "circumflex")
		   {
			  SendInput {Backspace}ῗ
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
		else if (breathing = "diaeresis")
		{
		   if (accent = "")
		   {
			  SendInput {Backspace}ϋ
		   }
		   else if (accent = "acute")
		   {
			  SendInput {Backspace}ΰ
		   }
		   else if (accent = "grave")
		   {
			  SendInput {Backspace}ῢ
		   }
		   else if (accent = "circumflex")
		   {
			  SendInput {Backspace}ῧ
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
  }
  
  return
}

resetDiacritics() {
  capital := false
  vowel := ""
  breathing := ""
  accent := ""
  subscript := ""
}

getShiftState() {
  return (GetKeyState("RShift") or GetKeyState("LShift"))
}
  
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



