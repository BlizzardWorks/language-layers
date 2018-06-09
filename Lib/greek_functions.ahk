addDiacritic() {
	; TODO conditional based upon user pref for precomp or decomp
	Greek_precomposed()
}


Greek_precomposed() {

deleteLastFullCharacter()

lastDiacriticKey := A_TickCount
sentKeys := 1

  if (capital) {
	if (vowel = "a")
	  {
		if (breathing = "")
		{
		   if (accent = "")
		   {
			  if (quantity = "")
			  {
				SendInput Α
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾼ
			  }
			  else if (quantity = "macron")
			  {
				SendInput Α{%macron%}
				sentKeys := 2
			  }
			  else if (quantity = "breve")
			  {
				SendInput Α{%breve%}
				sentKeys := 2
			  }
		   }
		   else if (accent = "acute")
		   {
		     SendInput Ά
		   }
		   else if (accent = "grave")
		   {
			 SendInput Ὰ
		   }
		}
		else if (breathing = "smooth")
		{
		   if (accent = "")
		   {
			  if (quantity = "")
			  {
				SendInput Ἀ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾈ
			  }
			  else if (quantity = "macron")
			  {
				SendInput Α{%macron%}{%smooth%}
				sentKeys := 3
			  }
			  else if (quantity = "breve")
			  {
				SendInput Α{%breve%}{%smooth%}
				sentKeys := 3
			  }
		   }
		   else if (accent = "acute")
		   {
			  if (quantity = "")
			  {
				SendInput Ἄ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾌ
			  }
			  else if (quantity = "macron")
			  {
				SendInput Α{%macron%}{%smooth%}{%acute%}
				sentKeys := 4
			  }
			  else if (quantity = "breve")
			  {
				SendInput Α{%breve%}{%smooth%}{%acute%}
				sentKeys := 4
			  }
		   }
		   else if (accent = "grave")
		   {
			  if (quantity = "")
			  {
				SendInput Ἂ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾊ
			  }
			  else if (quantity = "macron")
			  {
				SendInput Α{%macron%}{%smooth%}{%grave%}
				sentKeys := 4
			  }
			  else if (quantity = "breve")
			  {
				SendInput Α{%breve%}{%smooth%}{%grave%}
				sentKeys := 4
			  }
		   }
		   else if (accent = "circumflex")
		   {
			  if (quantity = "")
			  {
				SendInput Ἆ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾎ
			  }
		   }
		}
		else if (breathing = "rough")
		{
		   if (accent = "")
		   {
			  if (quantity = "")
			  {
				SendInput Ἁ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾉ
			  }
			  else if (quantity = "macron")
			  {
				SendInput Α{%macron%}{%rough%}
				sentKeys := 3
			  }
			  else if (quantity = "breve")
			  {
				SendInput Α{%breve%}{%rough%}
				sentKeys := 3
			  }
		   }
		   else if (accent = "acute")
		   {
			  if (quantity = "")
			  {
				SendInput Ἅ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾍ
			  }
			  else if (quantity = "macron")
			  {
				SendInput Α{%macron%}{%rough%}{%acute%}
				sentKeys := 4
			  }
			  else if (quantity = "breve")
			  {
				SendInput Α{%breve%}{%rough%}{%acute%}
				sentKeys := 4
			  }
		   }
		   else if (accent = "grave")
		   {
			  if (quantity = "")
			  {
				SendInput Ἃ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾋ
			  }
			  else if (quantity = "macron")
			  {
				SendInput Α{%macron%}{%rough%}{%grave%}
				sentKeys := 4
			  }
			  else if (quantity = "breve")
			  {
				SendInput Α{%breve%}{%rough%}{%grave%}
				sentKeys := 4
			  }
		   }
		   else if (accent = "circumflex")
		   {
			  if (quantity = "")
			  {
				SendInput Ἇ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾏ
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
			  SendInput Ε
		   }
		   else if (accent = "acute")
		   {
			  SendInput Έ
		   }
		   else if (accent = "grave")
		   {
			  SendInput Ὲ
		   }
		}
		else if (breathing = "smooth")
		{
		   if (accent = "")
		   {
			  SendInput Ἐ
		   }
		   else if (accent = "acute")
		   {
			  SendInput Ἔ
		   }
		   else if (accent = "grave")
		   {
			  SendInput Ἒ
		   }
		}
		else if (breathing = "rough")
		{
		   if (accent = "")
		   {
			  SendInput Ἑ
		   }
		   else if (accent = "acute")
		   {
			  SendInput Ἕ
		   }
		   else if (accent = "grave")
		   {
			  SendInput Ἓ
		   }
		}
	  }
	  
	  if (vowel = "h")
	  {
		if (breathing = "")
		{
		   if (accent = "")
		   {
			  if (quantity = "")
			  {
				SendInput Η
			  }
			  else if (quantity = "iota")
			  {
				SendInput ῌ
			  }
		   }
		   else if (accent = "acute")
		   {
			 SendInput Ή
		   }
		   else if (accent = "grave")
		   {
			 SendInput Ὴ
		   }
		}
		else if (breathing = "smooth")
		{
		   if (accent = "")
		   {
			  if (quantity = "")
			  {
				SendInput Ἠ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾘ
			  }
		   }
		   else if (accent = "acute")
		   {
			  if (quantity = "")
			  {
				SendInput Ἤ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾜ
			  }
		   }
		   else if (accent = "grave")
		   {
			  if (quantity = "")
			  {
				SendInput Ἢ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾚ
			  }
		   }
		   else if (accent = "circumflex")
		   {
			  if (quantity = "")
			  {
				SendInput Ἦ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾞ
			  }
		   }
		}
		else if (breathing = "rough")
		{
		   if (accent = "")
		   {
			  if (quantity = "")
			  {
				SendInput Ἡ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾙ
			  }
		   }
		   else if (accent = "acute")
		   {
			  if (quantity = "")
			  {
				SendInput Ἥ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾝ
			  }
		   }
		   else if (accent = "grave")
		   {
			  if (quantity = "")
			  {
				SendInput Ἣ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾛ
			  }
		   }
		   else if (accent = "circumflex")
		   {
			  if (quantity = "")
			  {
				SendInput Ἧ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾟ
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
			  if (quantity = "")
			  {
				SendInput Ι
			  }
			  else if (quantity = "macron")
			  {
				SendInput Ι{%macron%}
				sentKeys := 2
			  }
			  else if (quantity = "breve")
			  {
				SendInput Ι{%breve%}
				sentKeys := 2
			  }
		   }
		   else if (accent = "acute")
		   {
			  if (quantity = "")
			  {
				SendInput Ί
			  }
			  else if (quantity = "macron")
			  {
				SendInput Ι{%macron%}{%acute%}
				sentKeys := 3
			  }
			  else if (quantity = "breve")
			  {
				SendInput Ι{%breve%}{%acute%}
				sentKeys := 3
			  }
		   }
		   else if (accent = "grave")
		   {
			  if (quantity = "")
			  {
				SendInput Ὶ
			  }
			  else if (quantity = "macron")
			  {
				SendInput Ι{%macron%}{%grave%}
				sentKeys := 3
			  }
			  else if (quantity = "breve")
			  {
				SendInput Ι{%breve%}{%grave%}
				sentKeys := 3
			  }
		   }
		}
		else if (breathing = "smooth")
		{
		   if (accent = "")
		   {
			  if (quantity = "")
			  {
				SendInput Ἰ
			  }
			  else if (quantity = "macron")
			  {
				SendInput Ι{%macron%}{%smooth%}
				sentKeys := 3
			  }
			  else if (quantity = "breve")
			  {
				SendInput Ι{%breve%}{%smooth%}
				sentKeys := 3
			  }
		   }
		   else if (accent = "acute")
		   {
			  if (quantity = "")
			  {
				SendInput Ἴ
			  }
			  else if (quantity = "macron")
			  {
				SendInput Ι{%macron%}{%smooth%}{%acute%}
				sentKeys := 4
			  }
			  else if (quantity = "breve")
			  {
				SendInput Ι{%breve%}{%smooth%}{%acute%}
				sentKeys := 4
			  }
		   }
		   else if (accent = "grave")
		   {
			  if (quantity = "")
			  {
				SendInput Ἲ
			  }
			  else if (quantity = "macron")
			  {
				SendInput Ι{%macron%}{%smooth%}{%grave%}
				sentKeys := 4
			  }
			  else if (quantity = "breve")
			  {
				SendInput Ι{%breve%}{%smooth%}{%grave%}
				sentKeys := 4
			  }
		   }
		   else if (accent = "circumflex")
			{
			  SendInput Ἶ
		   }
		}
		else if (breathing = "rough")
		{
		   if (accent = "")
		   {
			  if (quantity = "")
			  {
				SendInput Ἱ
			  }
			  else if (quantity = "macron")
			  {
				SendInput Ι{%macron%}{%rough%}
				sentKeys := 3
			  }
			  else if (quantity = "breve")
			  {
				SendInput Ι{%breve%}{%rough%}
				sentKeys := 3
			  }
		   }
		   else if (accent = "acute")
		   {
			  if (quantity = "")
			  {
				SendInput Ἵ
			  }
			  else if (quantity = "macron")
			  {
				SendInput Ι{%macron%}{%rough%}{%acute%}
				sentKeys := 4
			  }
			  else if (quantity = "breve")
			  {
				SendInput Ι{%breve%}{%rough%}{%acute%}
				sentKeys := 4
			  }
		   }
		   else if (accent = "grave")
		   {
			  if (quantity = "")
			  {
				SendInput Ἳ
			  }
			  else if (quantity = "macron")
			  {
				SendInput Ι{%macron%}{%rough%}{%grave%}
				sentKeys := 4
			  }
			  else if (quantity = "breve")
			  {
				SendInput Ι{%breve%}{%rough%}{%grave%}
				sentKeys := 4
			  }
		   }
		   else if (accent = "circumflex")
		   {
			  SendInput Ἷ
		   }
		}
		else if (breathing = "diaeresis")
		{
			SendInput Ϊ
		}
	  }
	  
	  if (vowel = "o")
	  {
		if (breathing = "")
		{
		   if (accent = "")
		   {
			  SendInput Ο
		   }
		   else if (accent = "acute")
		   {
			  SendInput Ό
		   }
		   else if (accent = "grave")
		   {
			  SendInput Ὸ
		   }
		}
		else if (breathing = "smooth")
		{
		   if (accent = "")
		   {
			  SendInput Ὀ
		   }
		   else if (accent = "acute")
		   {
			  SendInput Ὄ
		   }
		   else if (accent = "grave")
		   {
			  SendInput Ὂ
		   }
		}
		else if (breathing = "rough")
		{
		   if (accent = "")
		   {
			  SendInput Ὁ
		   }
		   else if (accent = "acute")
		   {
			  SendInput Ὅ
		   }
		   else if (accent = "grave")
		   {
			  SendInput Ὃ
		   }
		}
	  }
	  
	  if (vowel = "u")
	  {
		if (breathing = "")
		{
		   if (accent = "")
		   {
			  if (quantity = "")
			  {
				SendInput Υ
			  }
			  else if (quantity = "macron")
			  {
				SendInput Υ{%macron%}
				sentKeys := 2
			  }
			  else if (quantity = "breve")
			  {
				SendInput Υ{%breve%}
				sentKeys := 2
			  }
		   }
		   else if (accent = "acute")
		   {
			  if (quantity = "")
			  {
				SendInput Ύ
			  }
			  else if (quantity = "macron")
			  {
				SendInput Υ{%macron%}{%acute%}
				sentKeys := 3
			  }
			  else if (quantity = "breve")
			  {
				SendInput Υ{%breve%}{%acute%}
				sentKeys := 3
			  }
		   }
		   else if (accent = "grave")
		   {
			  if (quantity = "")
			  {
				SendInput Ὺ
			  }
			  else if (quantity = "macron")
			  {
				SendInput Υ{%macron%}{%grave%}
				sentKeys := 3
			  }
			  else if (quantity = "breve")
			  {
				SendInput Υ{%breve%}{%grave%}
				sentKeys := 3
			  }
		   }
		}
		else if (breathing = "rough")
		{
		   if (accent = "")
		   {
			  if (quantity = "")
			  {
				SendInput Ὑ
			  }
			  else if (quantity = "macron")
			  {
				SendInput Υ{%macron%}{%rough%}
				sentKeys := 3
			  }
			  else if (quantity = "breve")
			  {
				SendInput Υ{%breve%}{%rough%}
				sentKeys := 3
			  }
		   }
		   else if (accent = "acute")
		   {
			  if (quantity = "")
			  {
				SendInput Ὕ
			  }
			  else if (quantity = "macron")
			  {
				SendInput Υ{%macron%}{%rough%}{%acute%}
				sentKeys := 4
			  }
			  else if (quantity = "breve")
			  {
				SendInput Υ{%breve%}{%rough%}{%acute%}
				sentKeys := 4
			  }
		   }
		   else if (accent = "grave")
		   {
			  if (quantity = "")
			  {
				SendInput Ὓ
			  }
			  else if (quantity = "macron")
			  {
				SendInput Υ{%macron%}{%rough%}{%grave%}
				sentKeys := 4
			  }
			  else if (quantity = "breve")
			  {
				SendInput Υ{%breve%}{%rough%}{%grave%}
				sentKeys := 4
			  }
		   }
		   else if (accent = "circumflex")
		   {
			  SendInput Ὗ
		   }
		}
		else if (breathing = "diaeresis")
		{
			SendInput Ϋ
		}
	  }
	  
	  if (vowel = "w")
	  {
		if (breathing = "")
		{
		   if (accent = "")
		   {
			  if (quantity = "")
			  {
				SendInput Ω
			  }
			  else if (quantity = "iota")
			  {
				SendInput ῼ
			  }
		   }
		   else if (accent = "acute")
		   {
			 SendInput Ώ
		   }
		   else if (accent = "grave")
		   {
			 SendInput Ὼ
		   }
		}
		else if (breathing = "smooth")
		{
		   if (accent = "")
		   {
			  if (quantity = "")
			  {
				SendInput Ὠ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾨ
			  }
		   }
		   else if (accent = "acute")
		   {
			  if (quantity = "")
			  {
				SendInput Ὤ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾬ
			  }
		   }
		   else if (accent = "grave")
		   {
			  if (quantity = "")
			  {
				SendInput Ὢ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾪ
			  }
		   }
		   else if (accent = "circumflex")
		   {
			  if (quantity = "")
			  {
				SendInput Ὦ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾮ
			  }
		   }
		}
		else if (breathing = "rough")
		{
		   if (accent = "")
		   {
			  if (quantity = "")
			  {
				SendInput Ὡ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾩ
			  }
		   }
		   else if (accent = "acute")
		   {
			  if (quantity = "")
			  {
				SendInput Ὥ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾭ
			  }
		   }
		   else if (accent = "grave")
		   {
			  if (quantity = "")
			  {
				SendInput Ὣ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾫ
			  }
		   }
		   else if (accent = "circumflex")
		   {
			  if (quantity = "")
			  {
				SendInput Ὧ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾯ
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
			  if (quantity = "")
			  {
				SendInput α
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾳ
			  }
			  else if (quantity = "macron")
			  {
				SendInput α{%macron%}
				sentKeys := 2
			  }
			  else if (quantity = "breve")
			  {
				SendInput α{%breve%}
				sentKeys := 2
			  }
		   }
		   else if (accent = "acute")
		   {
			  if (quantity = "")
			  {
				SendInput ά
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾴ
			  }
			  else if (quantity = "macron")
			  {
				SendInput α{%macron%}{%acute%}
				sentKeys := 3
			  }
			  else if (quantity = "breve")
			  {
				SendInput α{%breve%}{%acute%}
				sentKeys := 3
			  }
		   }
		   else if (accent = "grave")
		   {
			  if (quantity = "")
			  {
				SendInput ὰ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾲ
			  }
			  else if (quantity = "macron")
			  {
				SendInput α{%macron%}{%grave%}
				sentKeys := 3
			  }
			  else if (quantity = "breve")
			  {
				SendInput α{%breve%}{%grave%}
				sentKeys := 3
			  }
		   }
		   else if (accent = "circumflex")
		   {
			  if (quantity = "")
			  {
				SendInput ᾶ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾷ
			  }
		   }
		}
		else if (breathing = "smooth")
		{
		   if (accent = "")
		   {
			  if (quantity = "")
			  {
				SendInput ἀ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾀ
			  }
			  else if (quantity = "macron")
			  {
				SendInput α{%macron%}{%smooth%}
				sentKeys := 3
			  }
			  else if (quantity = "breve")
			  {
				SendInput α{%breve%}{%smooth%}
				sentKeys := 3
			  }
		   }
		   else if (accent = "acute")
		   {
			  if (quantity = "")
			  {
				SendInput ἄ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾄ
			  }
			  else if (quantity = "macron")
			  {
				SendInput α{%macron%}{%smooth%}{%acute%}
				sentKeys := 4
			  }
			  else if (quantity = "breve")
			  {
				SendInput α{%breve%}{%smooth%}{%acute%}
				sentKeys := 4
			  }
		   }
		   else if (accent = "grave")
		   {
			  if (quantity = "")
			  {
				SendInput ἂ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾂ
			  }
			  else if (quantity = "macron")
			  {
				SendInput α{%macron%}{%smooth%}{%grave%}
				sentKeys := 4
			  }
			  else if (quantity = "breve")
			  {
				SendInput α{%breve%}{%smooth%}{%grave%}
				sentKeys := 4
			  }
		   }
		   else if (accent = "circumflex")
		   {
			  if (quantity = "")
			  {
				SendInput ἆ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾆ
			  }
		   }
		}
		else if (breathing = "rough")
		{
		   if (accent = "")
		   {
			  if (quantity = "")
			  {
				SendInput ἁ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾁ
			  }
			  else if (quantity = "macron")
			  {
				SendInput α{%macron%}{%rough%}
				sentKeys := 3
			  }
			  else if (quantity = "breve")
			  {
				SendInput α{%breve%}{%rough%}
				sentKeys := 3
			  }
		   }
		   else if (accent = "acute")
		   {
			  if (quantity = "")
			  {
				SendInput ἅ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾅ
			  }
			  else if (quantity = "macron")
			  {
				SendInput α{%macron%}{%rough%}{%acute%}
				sentKeys := 4
			  }
			  else if (quantity = "breve")
			  {
				SendInput α{%breve%}{%rough%}{%acute%}
				sentKeys := 4
			  }
		   }
		   else if (accent = "grave")
		   {
			  if (quantity = "")
			  {
				SendInput ἃ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾃ
			  }
			  else if (quantity = "macron")
			  {
				SendInput α{%macron%}{%rough%}{%grave%}
				sentKeys := 4
			  }
			  else if (quantity = "breve")
			  {
				SendInput α{%breve%}{%rough%}{%grave%}
				sentKeys := 4
			  }
		   }
		   else if (accent = "circumflex")
		   {
			  if (quantity = "")
			  {
				SendInput ἇ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾇ
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
			  SendInput ε
		   }
		   else if (accent = "acute")
		   {
			  SendInput έ
		   }
		   else if (accent = "grave")
		   {
			  SendInput ὲ
		   }
		}
		else if (breathing = "smooth")
		{
		   if (accent = "")
		   {
			  SendInput ἐ
		   }
		   else if (accent = "acute")
		   {
			  SendInput ἔ
		   }
		   else if (accent = "grave")
		   {
			  SendInput ἒ
		   }
		}
		else if (breathing = "rough")
		{
		   if (accent = "")
		   {
			  SendInput ἑ
		   }
		   else if (accent = "acute")
		   {
			  SendInput ἕ
		   }
		   else if (accent = "grave")
		   {
			  SendInput ἓ
		   }
		}
	  }
	  
	  if (vowel = "h")
	  {
		if (breathing = "")
		{
		   if (accent = "")
		   {
			  if (quantity = "")
			  {
				SendInput η
			  }
			  else if (quantity = "iota")
			  {
				SendInput ῃ
			  }
		   }
		   else if (accent = "acute")
		   {
			  if (quantity = "")
			  {
				SendInput ή
			  }
			  else if (quantity = "iota")
			  {
				SendInput ῄ
			  }
		   }
		   else if (accent = "grave")
		   {
			  if (quantity = "")
			  {
				SendInput ὴ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ῂ
			  }
		   }
		   else if (accent = "circumflex")
		   {
			  if (quantity = "")
			  {
				SendInput ῆ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ῇ
			  }
		   }
		}
		else if (breathing = "smooth")
		{
		   if (accent = "")
		   {
			  if (quantity = "")
			  {
				SendInput ἠ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾐ
			  }
		   }
		   else if (accent = "acute")
		   {
			  if (quantity = "")
			  {
				SendInput ἤ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾔ
			  }
		   }
		   else if (accent = "grave")
		   {
			  if (quantity = "")
			  {
				SendInput ἢ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾒ
			  }
		   }
		   else if (accent = "circumflex")
		   {
			  if (quantity = "")
			  {
				SendInput ἦ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾖ
			  }
		   }
		}
		else if (breathing = "rough")
		{
		   if (accent = "")
		   {
			  if (quantity = "")
			  {
				SendInput ἡ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾑ
			  }
		   }
		   else if (accent = "acute")
		   {
			  if (quantity = "")
			  {
				SendInput ἥ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾕ
			  }
		   }
		   else if (accent = "grave")
		   {
			  if (quantity = "")
			  {
				SendInput ἣ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾓ
			  }
		   }
		   else if (accent = "circumflex")
		   {
			  if (quantity = "")
			  {
				SendInput ἧ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾗ
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
			  if (quantity = "")
			  {
				SendInput ι
			  }
			  else if (quantity = "macron")
			  {
				SendInput ι{%macron%}
				sentKeys := 2
			  }
			  else if (quantity = "breve")
			  {
				SendInput ι{%breve%}
				sentKeys := 2
			  }
		   }
		   else if (accent = "acute")
		   {
			  if (quantity = "")
			  {
				SendInput ί
			  }
			  else if (quantity = "macron")
			  {
				SendInput ι{%macron%}{%acute%}
				sentKeys := 3
			  }
			  else if (quantity = "breve")
			  {
				SendInput ι{%breve%}{%acute%}
				sentKeys := 3
			  }
		   }
		   else if (accent = "grave")
		   {
			  if (quantity = "")
			  {
				SendInput ὶ
			  }
			  else if (quantity = "macron")
			  {
				SendInput ι{%macron%}{%grave%}
				sentKeys := 3
			  }
			  else if (quantity = "breve")
			  {
				SendInput ι{%breve%}{%grave%}
				sentKeys := 3
			  }
		   }
		   else if (accent = "circumflex")
		   {
			  SendInput ῖ
		   }
		}
		else if (breathing = "smooth")
		{
		   if (accent = "")
		   {
			  if (quantity = "")
			  {
				SendInput ἰ
			  }
			  else if (quantity = "macron")
			  {
				SendInput ι{%macron%}{%smooth%}
				sentKeys := 3
			  }
			  else if (quantity = "breve")
			  {
				SendInput ι{%breve%}{%smooth%}
				sentKeys := 3
			  }
		   }
		   else if (accent = "acute")
		   {
			  if (quantity = "")
			  {
				SendInput ἴ
			  }
			  else if (quantity = "macron")
			  {
				SendInput ι{%macron%}{%smooth%}{%acute%}
				sentKeys := 4
			  }
			  else if (quantity = "breve")
			  {
				SendInput ι{%breve%}{%smooth%}{%acute%}
				sentKeys := 4
			  }
		   }
		   else if (accent = "grave")
		   {
			  if (quantity = "")
			  {
				SendInput ἲ
			  }
			  else if (quantity = "macron")
			  {
				SendInput ι{%macron%}{%smooth%}{%grave%}
				sentKeys := 4
			  }
			  else if (quantity = "breve")
			  {
				SendInput ι{%breve%}{%smooth%}{%grave%}
				sentKeys := 4
			  }
		   }
		   else if (accent = "circumflex")
			{
			  SendInput ἶ
		   }
		}
		else if (breathing = "rough")
		{
		   if (accent = "")
		   {
			  if (quantity = "")
			  {
				SendInput ἱ
			  }
			  else if (quantity = "macron")
			  {
				SendInput ι{%macron%}{%rough%}
				sentKeys := 3
			  }
			  else if (quantity = "breve")
			  {
				SendInput ι{%breve%}{%rough%}
				sentKeys := 3
			  }
		   }
		   else if (accent = "acute")
		   {
			  if (quantity = "")
			  {
				SendInput ἵ
			  }
			  else if (quantity = "macron")
			  {
				SendInput ι{%macron%}{%rough%}{%acute%}
				sentKeys := 4
			  }
			  else if (quantity = "breve")
			  {
				SendInput ι{%breve%}{%rough%}{%acute%}
				sentKeys := 4
			  }
		   }
		   else if (accent = "grave")
		   {
			  if (quantity = "")
			  {
				SendInput ἳ
			  }
			  else if (quantity = "macron")
			  {
				SendInput ι{%macron%}{%rough%}{%grave%}
				sentKeys := 4
			  }
			  else if (quantity = "breve")
			  {
				SendInput ι{%breve%}{%rough%}{%grave%}
				sentKeys := 4
			  }
		   }
		   else if (accent = "circumflex")
		   {
			  SendInput ἷ
		   }
		}
		else if (breathing = "diaeresis")
		{
		   if (accent = "")
		   {
			  SendInput ϊ
		   }
		   else if (accent = "acute")
		   {
			  SendInput ΐ
		   }
		   else if (accent = "grave")
		   {
			  SendInput ῒ
		   }
		   else if (accent = "circumflex")
		   {
			  SendInput ῗ
		   }
		}
	  }
	  
	  if (vowel = "o")
	  {
		if (breathing = "")
		{
		   if (accent = "")
		   {
			  SendInput ο
		   }
		   else if (accent = "acute")
		   {
			  SendInput ό
		   }
		   else if (accent = "grave")
		   {
			  SendInput ὸ
		   }
		}
		else if (breathing = "smooth")
		{
		   if (accent = "")
		   {
			  SendInput ὀ
		   }
		   else if (accent = "acute")
		   {
			  SendInput ὄ
		   }
		   else if (accent = "grave")
		   {
			  SendInput ὂ
		   }
		}
		else if (breathing = "rough")
		{
		   if (accent = "")
		   {
			  SendInput ὁ
		   }
		   else if (accent = "acute")
		   {
			  SendInput ὅ
		   }
		   else if (accent = "grave")
		   {
			  SendInput ὃ
		   }
		}
	  }
	  
	  if (vowel = "u")
	  {
		if (breathing = "")
		{
		   if (accent = "")
		   {
			  if (quantity = "")
			  {
				SendInput υ
			  }
			  else if (quantity = "macron")
			  {
				SendInput υ{%macron%}
				sentKeys := 2
			  }
			  else if (quantity = "breve")
			  {
				SendInput υ{%breve%}
				sentKeys := 2
			  }
		   }
		   else if (accent = "acute")
		   {
			  if (quantity = "")
			  {
				SendInput ύ
			  }
			  else if (quantity = "macron")
			  {
				SendInput υ{%macron%}{%acute%}
				sentKeys := 3
			  }
			  else if (quantity = "breve")
			  {
				SendInput υ{%breve%}{%acute%}
				sentKeys := 3
			  }
		   }
		   else if (accent = "grave")
		   {
			  if (quantity = "")
			  {
				SendInput ὺ
			  }
			  else if (quantity = "macron")
			  {
				SendInput υ{%macron%}{%grave%}
				sentKeys := 3
			  }
			  else if (quantity = "breve")
			  {
				SendInput υ{%breve%}{%grave%}
				sentKeys := 3
			  }
		   }
		   else if (accent = "circumflex")
		   {
			  SendInput ῦ
		   }
		}
		else if (breathing = "smooth")
		{
		   if (accent = "")
		   {
			  if (quantity = "")
			  {
				SendInput ὐ
			  }
			  else if (quantity = "macron")
			  {
				SendInput υ{%macron%}{%smooth%}
				sentKeys := 3
			  }
			  else if (quantity = "breve")
			  {
				SendInput υ{%breve%}{%smooth%}
				sentKeys := 3
			  }
		   }
		   else if (accent = "acute")
		   {
			  if (quantity = "")
			  {
				SendInput ὔ
			  }
			  else if (quantity = "macron")
			  {
				SendInput υ{%macron%}{%smooth%}{%acute%}
				sentKeys := 4
			  }
			  else if (quantity = "breve")
			  {
				SendInput υ{%breve%}{%smooth%}{%acute%}
				sentKeys := 4
			  }
		   }
		   else if (accent = "grave")
		   {
			  if (quantity = "")
			  {
				SendInput ὒ
			  }
			  else if (quantity = "macron")
			  {
				SendInput υ{%macron%}{%smooth%}{%grave%}
				sentKeys := 4
			  }
			  else if (quantity = "breve")
			  {
				SendInput υ{%breve%}{%smooth%}{%grave%}
				sentKeys := 4
			  }
		   }
		   else if (accent = "circumflex")
			{
			  SendInput ὖ
		   }
		}
		else if (breathing = "rough")
		{
		   if (accent = "")
		   {
			  if (quantity = "")
			  {
				SendInput ὑ
			  }
			  else if (quantity = "macron")
			  {
				SendInput υ{%macron%}{%rough%}
				sentKeys := 3
			  }
			  else if (quantity = "breve")
			  {
				SendInput υ{%breve%}{%rough%}
				sentKeys := 3
			  }
		   }
		   else if (accent = "acute")
		   {
			  if (quantity = "")
			  {
				SendInput ὕ
			  }
			  else if (quantity = "macron")
			  {
				SendInput υ{%macron%}{%rough%}{%acute%}
				sentKeys := 4
			  }
			  else if (quantity = "breve")
			  {
				SendInput υ{%breve%}{%rough%}{%acute%}
				sentKeys := 4
			  }
		   }
		   else if (accent = "grave")
		   {
			  if (quantity = "")
			  {
				SendInput ὓ
			  }
			  else if (quantity = "macron")
			  {
				SendInput υ{%macron%}{%rough%}{%grave%}
				sentKeys := 4
			  }
			  else if (quantity = "breve")
			  {
				SendInput υ{%breve%}{%rough%}{%grave%}
				sentKeys := 4
			  }
		   }
		   else if (accent = "circumflex")
		   {
			  SendInput ὗ
		   }
		}
		else if (breathing = "diaeresis")
		{
		   if (accent = "")
		   {
			  SendInput ϋ
		   }
		   else if (accent = "acute")
		   {
			  SendInput ΰ
		   }
		   else if (accent = "grave")
		   {
			  SendInput ῢ
		   }
		   else if (accent = "circumflex")
		   {
			  SendInput ῧ
		   }
		}
	  }
	  
	  if (vowel = "w")
	  {
		if (breathing = "")
		{
		   if (accent = "")
		   {
			  if (quantity = "")
			  {
				SendInput ω
			  }
			  else if (quantity = "iota")
			  {
				SendInput ῳ
			  }
		   }
		   else if (accent = "acute")
		   {
			  if (quantity = "")
			  {
				SendInput ώ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ῴ
			  }
		   }
		   else if (accent = "grave")
		   {
			  if (quantity = "")
			  {
				SendInput ὼ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ῲ
			  }
		   }
		   else if (accent = "circumflex")
		   {
			  if (quantity = "")
			  {
				SendInput ῶ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ῷ
			  }
		   }
		}
		else if (breathing = "smooth")
		{
		   if (accent = "")
		   {
			  if (quantity = "")
			  {
				SendInput ὠ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾠ
			  }
		   }
		   else if (accent = "acute")
		   {
			  if (quantity = "")
			  {
				SendInput ὤ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾤ
			  }
		   }
		   else if (accent = "grave")
		   {
			  if (quantity = "")
			  {
				SendInput ὢ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾢ
			  }
		   }
		   else if (accent = "circumflex")
		   {
			  if (quantity = "")
			  {
				SendInput ὦ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾦ
			  }
		   }
		}
		else if (breathing = "rough")
		{
		   if (accent = "")
		   {
			  if (quantity = "")
			  {
				SendInput ὡ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾡ
			  }
		   }
		   else if (accent = "acute")
		   {
			  if (quantity = "")
			  {
				SendInput ὥ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾥ
			  }
		   }
		   else if (accent = "grave")
		   {
			  if (quantity = "")
			  {
				SendInput ὣ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾣ
			  }
		   }
		   else if (accent = "circumflex")
		   {
			  if (quantity = "")
			  {
				SendInput ὧ
			  }
			  else if (quantity = "iota")
			  {
				SendInput ᾧ
			  }
		   }
		}
    }
  }
  
  keysToBackspace := sentKeys
  
  return
}


resetDiacritics() 
{
	capital := false
	vowel := ""
	breathing := ""
	accent := ""
	quantity := ""
	return
}

deleteLastFullCharacter()
{
	timeOfLastHotkey := A_TickCount - A_TimeSincePriorHotkey
	if((timeOfLastHotKey - lastDiacriticKey) < 50)
	{
		SendInput {Backspace %keysToBackspace%}
	}
		else
	{
		SendInput {Backspace}
	}
	return
}