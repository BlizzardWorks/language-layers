Greek_addDiacritic() {

	thisKeySequence := A_TickCount

	; Conditional based upon user preference for precomp or decomp Unicode
	if(unicodeSendType = "precomposed")
	{
		keyInfo := Greek_precomposed()
	}
	else if(unicodeSendType = "decomposed")
	{
		keyInfo := Greek_decomposed()
	}
	
	keysToSend := keyInfo[1]
	numKeysToSend := keyInfo[2]
	
	if(keysToSend != "")
	{
		deleteLastFullCharacter()
		SendInput % keysToSend
		lastKeySequence := thisKeySequence
		numKeysToBackspace := numKeysToSend
	}
	else
	{
		Greek_breathing := Greek_priorState[1]
		Greek_accent := Greek_priorState[2]
		Greek_quantity := Greek_priorState[3]
	}
}


Greek_precomposed() {

	keysToSend := ""
	numKeysToSend := 1

	if (Greek_capital) {
		if (Greek_vowel = "a")
		{
			if (Greek_breathing = "")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Α"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾼ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Ᾱ"
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Ᾰ"
					}
				}
				else if (Greek_accent = "acute")
				{
						keysToSend := "Ά"
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "Ὰ"
				}
			}
			else if (Greek_breathing = "smooth")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ἀ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾈ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Α" Greek_macron Greek_smooth
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Α" Greek_breve Greek_smooth
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ἄ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾌ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Α" Greek_macron Greek_smooth Greek_acute
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Α" Greek_breve Greek_smooth Greek_acute
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ἂ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾊ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Α" Greek_macron Greek_smooth Greek_grave
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Α" Greek_breve Greek_smooth Greek_grave
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "circumflex")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ἆ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾎ"
					}
				}
			}
			else if (Greek_breathing = "rough")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ἁ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾉ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Α" Greek_macron Greek_rough
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Α" Greek_breve Greek_rough
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ἅ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾍ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Α" Greek_macron Greek_rough Greek_acute
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Α" Greek_breve Greek_rough Greek_acute
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ἃ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾋ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Α" Greek_macron Greek_rough Greek_grave
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Α" Greek_breve Greek_rough Greek_grave
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "circumflex")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ἇ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾏ"
					}
				}
			}
		}
		
		else if (Greek_vowel = "e")
		{
			if (Greek_breathing = "")
			{
				if (Greek_accent = "")
				{
					keysToSend := "Ε"
				}
				else if (Greek_accent = "acute")
				{
					keysToSend := "Έ"
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "Ὲ"
				}
			}
			else if (Greek_breathing = "smooth")
			{
				if (Greek_accent = "")
				{
					keysToSend := "Ἐ"
				}
				else if (Greek_accent = "acute")
				{
					keysToSend := "Ἔ"
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "Ἒ"
				}
			}
			else if (Greek_breathing = "rough")
			{
				if (Greek_accent = "")
				{
					keysToSend := "Ἑ"
				}
				else if (Greek_accent = "acute")
				{
					keysToSend := "Ἕ"
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "Ἓ"
				}
			}
		}
		
		else if (Greek_vowel = "h")
		{
			if (Greek_breathing = "")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Η"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ῌ"
					}
				}
				else if (Greek_accent = "acute")
				{
					keysToSend := "Ή"
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "Ὴ"
				}
			}
			else if (Greek_breathing = "smooth")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ἠ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾘ"
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ἤ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾜ"
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ἢ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾚ"
					}
				}
				else if (Greek_accent = "circumflex")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ἦ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾞ"
					}
				}
			}
			else if (Greek_breathing = "rough")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ἡ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾙ"
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ἥ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾝ"
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ἣ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾛ"
					}
				}
				else if (Greek_accent = "circumflex")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ἧ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾟ"
					}
				}
			}
		}
		
		else if (Greek_vowel = "i")
		{
			if (Greek_breathing = "")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ι"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Ῑ"
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Ῐ"
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ί"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Ι" Greek_macron Greek_acute
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Ι" Greek_breve Greek_acute
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ὶ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Ι" Greek_macron Greek_grave
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Ι" Greek_breve Greek_grave
						numKeysToSend := 3
					}
				}
			}
			else if (Greek_breathing = "smooth")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ἰ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Ι" Greek_macron Greek_smooth
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Ι" Greek_breve Greek_smooth
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ἴ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Ι" Greek_macron Greek_smooth Greek_acute
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Ι" Greek_breve Greek_smooth Greek_acute
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ἲ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Ι" Greek_macron Greek_smooth Greek_grave
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Ι" Greek_breve Greek_smooth Greek_grave
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "circumflex")
				{
					keysToSend := "Ἶ"
				}
			}
			else if (Greek_breathing = "rough")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ἱ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Ι" Greek_macron Greek_rough
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Ι" Greek_breve Greek_rough
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ἵ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Ι" Greek_macron Greek_rough Greek_acute
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Ι" Greek_breve Greek_rough Greek_acute
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ἳ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Ι" Greek_macron Greek_rough Greek_grave
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Ι" Greek_breve Greek_rough Greek_grave
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "circumflex")
				{
					keysToSend := "Ἷ"
				}
			}
			else if (Greek_breathing = "diaeresis")
			{
				keysToSend := "Ϊ"
			}
		}
		
		else if (Greek_vowel = "o")
		{
			if (Greek_breathing = "")
			{
				if (Greek_accent = "")
				{
					keysToSend := "Ο"
				}
				else if (Greek_accent = "acute")
				{
					keysToSend := "Ό"
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "Ὸ"
				}
			}
			else if (Greek_breathing = "smooth")
			{
				if (Greek_accent = "")
				{
					keysToSend := "Ὀ"
				}
				else if (Greek_accent = "acute")
				{
					keysToSend := "Ὄ"
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "Ὂ"
				}
			}
			else if (Greek_breathing = "rough")
			{
				if (Greek_accent = "")
				{
					keysToSend := "Ὁ"
				}
				else if (Greek_accent = "acute")
				{
					keysToSend := "Ὅ"
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "Ὃ"
				}
			}
		}
		
		else if (Greek_vowel = "u")
		{
			if (Greek_breathing = "")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Υ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Ῡ"
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Ῠ"
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ύ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Υ" Greek_macron Greek_acute
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Υ" Greek_breve Greek_acute
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ὺ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Υ" Greek_macron Greek_grave
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Υ" Greek_breve Greek_grave
						numKeysToSend := 3
					}
				}
			}
			else if (Greek_breathing = "rough")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ὑ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Υ" Greek_macron Greek_rough
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Υ" Greek_breve Greek_rough
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ὕ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Υ" Greek_macron Greek_rough Greek_acute
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Υ" Greek_breve Greek_rough Greek_acute
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ὓ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Υ" Greek_macron Greek_rough Greek_grave
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Υ" Greek_breve Greek_rough Greek_grave
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "circumflex")
				{
					keysToSend := "Ὗ"
				}
			}
			else if (Greek_breathing = "diaeresis")
			{
				keysToSend := "Ϋ"
			}
		}
		
		else if (Greek_vowel = "w")
		{
			if (Greek_breathing = "")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ω"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ῼ"
					}
				}
				else if (Greek_accent = "acute")
				{
					keysToSend := "Ώ"
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "Ὼ"
				}
			}
			else if (Greek_breathing = "smooth")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ὠ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾨ"
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ὤ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾬ"
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ὢ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾪ"
					}
				}
				else if (Greek_accent = "circumflex")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ὦ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾮ"
					}
				}
			}
			else if (Greek_breathing = "rough")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ὡ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾩ"
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ὥ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾭ"
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ὣ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾫ"
					}
				}
				else if (Greek_accent = "circumflex")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ὧ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾯ"
					}
				}
			}
		}
		
		else if (Greek_vowel = "r")
		{
			if (Greek_breathing = "")
			{
				keysToSend := "Ρ"
			}
			else if (Greek_breathing = "rough")
			{
				keysToSend := "Ῥ"
			}
		}
	}
	
	else {
		if (Greek_vowel = "a")
		{
			if (Greek_breathing = "")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "α"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾳ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "ᾱ"
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "ᾰ"
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ά"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾴ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "α" Greek_macron Greek_acute
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "α" Greek_breve Greek_acute
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ὰ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾲ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "α" Greek_macron Greek_grave
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "α" Greek_breve Greek_grave
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "circumflex")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ᾶ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾷ"
					}
				}
			}
			else if (Greek_breathing = "smooth")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ἀ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾀ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "α" Greek_macron Greek_smooth
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "α" Greek_breve Greek_smooth
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ἄ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾄ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "α" Greek_macron Greek_smooth Greek_acute
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "α" Greek_breve Greek_smooth Greek_acute
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ἂ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾂ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "α" Greek_macron Greek_smooth Greek_grave
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "α" Greek_breve Greek_smooth Greek_grave
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "circumflex")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ἆ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾆ"
					}
				}
			}
			else if (Greek_breathing = "rough")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ἁ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾁ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "α" Greek_macron Greek_rough
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "α" Greek_breve Greek_rough
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ἅ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾅ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "α" Greek_macron Greek_rough Greek_acute
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "α" Greek_breve Greek_rough Greek_acute
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ἃ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾃ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "α" Greek_macron Greek_rough Greek_grave
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "α" Greek_breve Greek_rough Greek_grave
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "circumflex")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ἇ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾇ"
					}
				}
			}
		}
			
		else if (Greek_vowel = "e")
		{
			if (Greek_breathing = "")
			{
				if (Greek_accent = "")
				{
					keysToSend := "ε"
				}
				else if (Greek_accent = "acute")
				{
					keysToSend := "έ"
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "ὲ"
				}
			}
			else if (Greek_breathing = "smooth")
			{
				if (Greek_accent = "")
				{
					keysToSend := "ἐ"
				}
				else if (Greek_accent = "acute")
				{
					keysToSend := "ἔ"
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "ἒ"
				}
			}
			else if (Greek_breathing = "rough")
			{
				if (Greek_accent = "")
				{
					keysToSend := "ἑ"
				}
				else if (Greek_accent = "acute")
				{
					keysToSend := "ἕ"
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "ἓ"
				}
			}
		}
		
		else if (Greek_vowel = "h")
		{
			if (Greek_breathing = "")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "η"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ῃ"
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ή"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ῄ"
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ὴ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ῂ"
					}
				}
				else if (Greek_accent = "circumflex")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ῆ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ῇ"
					}
				}
			}
			else if (Greek_breathing = "smooth")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ἠ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾐ"
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ἤ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾔ"
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ἢ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾒ"
					}
				}
				else if (Greek_accent = "circumflex")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ἦ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾖ"
					}
				}
			}
			else if (Greek_breathing = "rough")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ἡ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾑ"
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ἥ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾕ"
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ἣ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾓ"
					}
				}
				else if (Greek_accent = "circumflex")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ἧ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾗ"
					}
				}
			}
		}
		
		else if (Greek_vowel = "i")
		{
			if (Greek_breathing = "")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ι"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "ῑ"
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "ῐ"
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ί"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "ι" Greek_macron Greek_acute
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "ι" Greek_breve Greek_acute
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ὶ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "ι" Greek_macron Greek_grave
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "ι" Greek_breve Greek_grave
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "circumflex")
				{
					keysToSend := "ῖ"
				}
			}
			else if (Greek_breathing = "smooth")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ἰ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "ι" Greek_macron Greek_smooth
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "ι" Greek_breve Greek_smooth
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ἴ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "ι" Greek_macron Greek_smooth Greek_acute
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "ι" Greek_breve Greek_smooth Greek_acute
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ἲ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "ι" Greek_macron Greek_smooth Greek_grave
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "ι" Greek_breve Greek_smooth Greek_grave
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "circumflex")
				{
					keysToSend := "ἶ"
				}
			}
			else if (Greek_breathing = "rough")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ἱ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "ι" Greek_macron Greek_rough
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "ι" Greek_breve Greek_rough
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ἵ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "ι" Greek_macron Greek_rough Greek_acute
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "ι" Greek_breve Greek_rough Greek_acute
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ἳ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "ι" Greek_macron Greek_rough Greek_grave
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "ι" Greek_breve Greek_rough Greek_grave
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "circumflex")
				{
					keysToSend := "ἷ"
				}
			}
			else if (Greek_breathing = "diaeresis")
			{
				if (Greek_accent = "")
				{
					keysToSend := "ϊ"
				}
				else if (Greek_accent = "acute")
				{
					keysToSend := "ΐ"
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "ῒ"
				}
				else if (Greek_accent = "circumflex")
				{
					keysToSend := "ῗ"
				}
			}
		}
			
		else if (Greek_vowel = "o")
		{
			if (Greek_breathing = "")
			{
				if (Greek_accent = "")
				{
					keysToSend := "ο"
				}
				else if (Greek_accent = "acute")
				{
					keysToSend := "ό"
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "ὸ"
				}
			}
			else if (Greek_breathing = "smooth")
			{
				if (Greek_accent = "")
				{
					keysToSend := "ὀ"
				}
				else if (Greek_accent = "acute")
				{
					keysToSend := "ὄ"
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "ὂ"
				}
			}
			else if (Greek_breathing = "rough")
			{
				if (Greek_accent = "")
				{
					keysToSend := "ὁ"
				}
				else if (Greek_accent = "acute")
				{
					keysToSend := "ὅ"
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "ὃ"
				}
			}
		}
		
		else if (Greek_vowel = "u")
		{
			if (Greek_breathing = "")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "υ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "ῡ"
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "ῠ"
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ύ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "υ" Greek_macron Greek_acute
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "υ" Greek_breve Greek_acute
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ὺ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "υ" Greek_macron Greek_grave
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "υ" Greek_breve Greek_grave
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "circumflex")
				{
					keysToSend := "ῦ"
				}
			}
			else if (Greek_breathing = "smooth")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ὐ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "υ" Greek_macron Greek_smooth
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "υ" Greek_breve Greek_smooth
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ὔ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "υ" Greek_macron Greek_smooth Greek_acute
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "υ" Greek_breve Greek_smooth Greek_acute
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ὒ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "υ" Greek_macron Greek_smooth Greek_grave
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "υ" Greek_breve Greek_smooth Greek_grave
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "circumflex")
				{
					keysToSend := "ὖ"
				}
			}
			else if (Greek_breathing = "rough")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ὑ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "υ" Greek_macron Greek_rough
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "υ" Greek_breve Greek_rough
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ὕ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "υ" Greek_macron Greek_rough Greek_acute
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "υ" Greek_breve Greek_rough Greek_acute
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ὓ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "υ" Greek_macron Greek_rough Greek_grave
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "υ" Greek_breve Greek_rough Greek_grave
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "circumflex")
				{
					keysToSend := "ὗ"
				}
			}
			else if (Greek_breathing = "diaeresis")
			{
				if (Greek_accent = "")
				{
					keysToSend := "ϋ"
				}
				else if (Greek_accent = "acute")
				{
					keysToSend := "ΰ"
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "ῢ"
				}
				else if (Greek_accent = "circumflex")
				{
					keysToSend := "ῧ"
				}
			}
		}
		
		else if (Greek_vowel = "w")
		{
			if (Greek_breathing = "")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ω"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ῳ"
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ώ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ῴ"
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ὼ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ῲ"
					}
				}
				else if (Greek_accent = "circumflex")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ῶ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ῷ"
					}
				}
			}
			else if (Greek_breathing = "smooth")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ὠ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾠ"
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ὤ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾤ"
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ὢ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾢ"
					}
				}
				else if (Greek_accent = "circumflex")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ὦ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾦ"
					}
				}
			}
			else if (Greek_breathing = "rough")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ὡ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾡ"
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ὥ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾥ"
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ὣ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾣ"
					}
				}
				else if (Greek_accent = "circumflex")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ὧ"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ᾧ"
					}
				}
			}
		}
		
		else if (Greek_vowel = "r")
		{
			if (Greek_breathing = "")
			{
				keysToSend := "ρ"
			}
			else if (Greek_breathing = "smooth")
			{
				keysToSend := "ῤ"
			}
			else if (Greek_breathing = "rough")
			{
				keysToSend := "ῥ"
			}
		}
	}
	
	if(Greek_dot)
	{
		keysToSend := keysToSend Greek_underDot
		numKeysToSend := numKeysToSend + 1
	}
	
	return [keysToSend, numKeysToSend]
}


Greek_decomposed() {

	keysToSend := ""
	numKeysToSend := 1

	if (Greek_capital) {
		if (Greek_vowel = "a")
		{
			if (Greek_breathing = "")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Α"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "Α" Greek_iotaSub
						numKeysToSend := 2
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Α" Greek_macron
						numKeysToSend := 2
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Α" Greek_breve
						numKeysToSend := 2
					}
				}
				else if (Greek_accent = "acute")
				{
					keysToSend := "Α" Greek_acute
					numKeysToSend := 2
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "Α" Greek_grave
					numKeysToSend := 2
				}
			}
			else if (Greek_breathing = "smooth")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Α" Greek_smooth
						numKeysToSend := 2
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "Α" Greek_smooth Greek_iotaSub
						numKeysToSend := 3
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Α" Greek_macron Greek_smooth
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Α" Greek_breve Greek_smooth
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Α" Greek_smooth Greek_acute
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "Α" Greek_smooth Greek_acute Greek_iotaSub
						numKeysToSend := 4
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Α" Greek_macron Greek_smooth Greek_acute
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Α" Greek_breve Greek_smooth Greek_acute
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Α" Greek_smooth Greek_grave
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "Α" Greek_smooth Greek_grave Greek_iotaSub
						numKeysToSend := 4
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Α" Greek_macron Greek_smooth Greek_grave
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Α" Greek_breve Greek_smooth Greek_grave
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "circumflex")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Α" Greek_smooth Greek_circumflex
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "Α" Greek_smooth Greek_circumflex Greek_iotaSub
						numKeysToSend := 4
					}
				}
			}
			else if (Greek_breathing = "rough")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Α" Greek_rough
						numKeysToSend := 2
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "Α" Greek_rough Greek_iotaSub
						numKeysToSend := 3
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Α" Greek_macron Greek_rough
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Α" Greek_breve Greek_rough
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Α" Greek_rough Greek_acute
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "Α" Greek_rough Greek_acute Greek_iotaSub
						numKeysToSend := 4
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Α" Greek_macron Greek_rough Greek_acute
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Α" Greek_breve Greek_rough Greek_acute
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Α" Greek_rough Greek_grave
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "Α" Greek_rough Greek_grave Greek_iotaSub
						numKeysToSend := 4
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Α" Greek_macron Greek_rough Greek_grave
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Α" Greek_breve Greek_rough Greek_grave
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "circumflex")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Α" Greek_rough Greek_circumflex
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "Α" Greek_rough Greek_circumflex Greek_iotaSub
						numKeysToSend := 4
					}
				}
			}
		}
		
		else if (Greek_vowel = "e")
		{
			if (Greek_breathing = "")
			{
				if (Greek_accent = "")
				{
					keysToSend := "Ε"
				}
				else if (Greek_accent = "acute")
				{
					keysToSend := "Ε" Greek_acute
					numKeysToSend := 2
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "Ε" Greek_grave
					numKeysToSend := 2
				}
			}
			else if (Greek_breathing = "smooth")
			{
				if (Greek_accent = "")
				{
					keysToSend := "Ε" Greek_smooth
					numKeysToSend := 2
				}
				else if (Greek_accent = "acute")
				{
					keysToSend := "Ε" Greek_smooth Greek_acute
					numKeysToSend := 3
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "Ε" Greek_smooth Greek_grave
					numKeysToSend := 3
				}
			}
			else if (Greek_breathing = "rough")
			{
				if (Greek_accent = "")
				{
					keysToSend := "Ε" Greek_rough
					numKeysToSend := 2
				}
				else if (Greek_accent = "acute")
				{
					keysToSend := "Ε" Greek_rough Greek_acute
					numKeysToSend := 3
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "Ε" Greek_rough Greek_grave
					numKeysToSend := 3
				}
			}
		}
		
		else if (Greek_vowel = "h")
		{
			if (Greek_breathing = "")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Η"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "Η" Greek_iotaSub
						numKeysToSend := 2
					}
				}
				else if (Greek_accent = "acute")
				{
					keysToSend := "Η" Greek_acute
					numKeysToSend := 2
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "Η" Greek_grave
					numKeysToSend := 2
				}
			}
			else if (Greek_breathing = "smooth")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Η" Greek_smooth
						numKeysToSend := 2
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "Η" Greek_smooth Greek_iotaSub
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Η" Greek_smooth Greek_acute
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "Η" Greek_smooth Greek_acute Greek_iotaSub
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Η" Greek_smooth Greek_grave
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "Η" Greek_smooth Greek_grave Greek_iotaSub
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "circumflex")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Η" Greek_smooth Greek_circumflex
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "Η" Greek_smooth Greek_circumflex Greek_iotaSub
						numKeysToSend := 3
					}
				}
			}
			else if (Greek_breathing = "rough")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Η" Greek_rough
						numKeysToSend := 2
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "Η" Greek_rough Greek_iotaSub
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Η" Greek_rough Greek_acute
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "Η" Greek_rough Greek_acute Greek_iotaSub
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Η" Greek_rough Greek_grave
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "Η" Greek_rough Greek_grave Greek_iotaSub
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "circumflex")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Η" Greek_rough Greek_circumflex
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "Η" Greek_rough Greek_circumflex Greek_iotaSub
						numKeysToSend := 4
					}
				}
			}
		}
		
		else if (Greek_vowel = "i")
		{
			if (Greek_breathing = "")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ι"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Ι" Greek_macron
						numKeysToSend := 2
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Ι" Greek_breve
						numKeysToSend := 2
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ι" Greek_acute
						numKeysToSend := 2
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Ι" Greek_macron Greek_acute
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Ι" Greek_breve Greek_acute
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ι" Greek_grave
						numKeysToSend := 2
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Ι" Greek_macron Greek_grave
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Ι" Greek_breve Greek_grave
						numKeysToSend := 3
					}
				}
			}
			else if (Greek_breathing = "smooth")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ι" Greek_smooth
						numKeysToSend := 2
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Ι" Greek_macron Greek_smooth
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Ι" Greek_breve Greek_smooth
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ι" Greek_smooth Greek_acute
						numKeysToSend := 3
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Ι" Greek_macron Greek_smooth Greek_acute
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Ι" Greek_breve Greek_smooth Greek_acute
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ι" Greek_smooth Greek_grave
						numKeysToSend := 3
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Ι" Greek_macron Greek_smooth Greek_grave
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Ι" Greek_breve Greek_smooth Greek_grave
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "circumflex")
				{
					keysToSend := "Ι" Greek_smooth Greek_circumflex
					numKeysToSend := 3
				}
			}
			else if (Greek_breathing = "rough")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ι" Greek_rough
						numKeysToSend := 2
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Ι" Greek_macron Greek_rough
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Ι" Greek_breve Greek_rough
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ι" Greek_rough Greek_acute
						numKeysToSend := 3
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Ι" Greek_macron Greek_rough Greek_acute
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Ι" Greek_breve Greek_rough Greek_acute
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ι" Greek_rough Greek_grave
						numKeysToSend := 3
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Ι" Greek_macron Greek_rough Greek_grave
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Ι" Greek_breve Greek_rough Greek_grave
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "circumflex")
				{
					keysToSend := "Ι" Greek_rough Greek_circumflex
					numKeysToSend := 3
				}
			}
			else if (Greek_breathing = "diaeresis")
			{
				keysToSend := "Ι" Greek_diaeresis
				numKeysToSend := 2
			}
		}
		
		else if (Greek_vowel = "o")
		{
			if (Greek_breathing = "")
			{
				if (Greek_accent = "")
				{
					keysToSend := "Ο"
				}
				else if (Greek_accent = "acute")
				{
					keysToSend := "Ο" Greek_acute
					numKeysToSend := 2
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "Ο" Greek_grave
					numKeysToSend := 2
				}
			}
			else if (Greek_breathing = "smooth")
			{
				if (Greek_accent = "")
				{
					keysToSend := "Ο" Greek_smooth
					numKeysToSend := 2
				}
				else if (Greek_accent = "acute")
				{
					keysToSend := "Ο" Greek_smooth Greek_acute
					numKeysToSend := 3
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "Ο" Greek_smooth Greek_grave
					numKeysToSend := 3
				}
			}
			else if (Greek_breathing = "rough")
			{
				if (Greek_accent = "")
				{
					keysToSend := "Ο" Greek_rough
					numKeysToSend := 2
				}
				else if (Greek_accent = "acute")
				{
					keysToSend := "Ο" Greek_rough Greek_acute
					numKeysToSend := 3
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "Ο" Greek_rough Greek_grave
					numKeysToSend := 3
				}
			}
		}
		
		else if (Greek_vowel = "u")
		{
			if (Greek_breathing = "")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Υ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Υ" Greek_macron
						numKeysToSend := 2
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Υ" Greek_breve
						numKeysToSend := 2
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Υ" Greek_acute
						numKeysToSend := 2
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Υ" Greek_macron Greek_acute
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Υ" Greek_breve Greek_acute
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Υ" Greek_grave
						numKeysToSend := 2
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Υ" Greek_macron Greek_grave
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Υ" Greek_breve Greek_grave
						numKeysToSend := 3
					}
				}
			}
			else if (Greek_breathing = "rough")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Υ" Greek_rough
						numKeysToSend := 2
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Υ" Greek_macron Greek_rough
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Υ" Greek_breve Greek_rough
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Υ" Greek_rough Greek_acute
						numKeysToSend := 3
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Υ" Greek_macron Greek_rough Greek_acute
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Υ" Greek_breve Greek_rough Greek_acute
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Υ" Greek_rough Greek_grave
						numKeysToSend := 3
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "Υ" Greek_macron Greek_rough Greek_grave
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "Υ" Greek_breve Greek_rough Greek_grave
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "circumflex")
				{
					keysToSend := "Υ" Greek_rough Greek_circumflex
					numKeysToSend := 3
				}
			}
			else if (Greek_breathing = "diaeresis")
			{
				keysToSend := "Υ" Greek_diaeresis
				numKeysToSend := 2
			}
		}
		
		else if (Greek_vowel = "w")
		{
			if (Greek_breathing = "")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ω"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "Ω" Greek_iotaSub
						numKeysToSend := 2
					}
				}
				else if (Greek_accent = "acute")
				{
					keysToSend := "Ω" Greek_acute
					numKeysToSend := 2
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "Ω" Greek_grave
					numKeysToSend := 2
				}
			}
			else if (Greek_breathing = "smooth")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
					keysToSend := "Ω" Greek_smooth
					numKeysToSend := 2
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "Ω" Greek_smooth Greek_iotaSub
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ω" Greek_smooth Greek_acute
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "Ω" Greek_smooth Greek_acute Greek_iotaSub
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ω" Greek_smooth Greek_grave
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "Ω" Greek_smooth Greek_grave Greek_iotaSub
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "circumflex")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ω" Greek_smooth Greek_circumflex
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "Ω" Greek_smooth Greek_circumflex Greek_iotaSub
						numKeysToSend := 4
					}
				}
			}
			else if (Greek_breathing = "rough")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ω" Greek_rough
						numKeysToSend := 2
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "Ω" Greek_rough Greek_iotaSub
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ω" Greek_rough Greek_acute
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "Ω" Greek_rough Greek_acute Greek_iotaSub
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ω" Greek_rough Greek_grave
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "Ω" Greek_rough Greek_grave Greek_iotaSub
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "circumflex")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "Ω" Greek_rough Greek_circumflex
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "Ω" Greek_rough Greek_circumflex Greek_iotaSub
						numKeysToSend := 4
					}
				}
			}
		}
		
		else if (Greek_vowel = "r")
		{
			if (Greek_breathing = "")
			{
				keysToSend := "Ρ"
			}
			else if (Greek_breathing = "rough")
			{
				keysToSend := "Ρ" Greek_rough
				numKeysToSend := 2
			}
		}
	}
	
	else {
		if (Greek_vowel = "a")
		{
			if (Greek_breathing = "")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "α"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "α" Greek_iotaSub
						numKeysToSend := 2
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "α" Greek_macron
						numKeysToSend := 2
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "α" Greek_breve
						numKeysToSend := 2
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "α" Greek_acute
						numKeysToSend := 2
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "α" Greek_acute Greek_iotaSub
						numKeysToSend := 3
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "α" Greek_macron Greek_acute
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "α" Greek_breve Greek_acute
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "α" Greek_grave
						numKeysToSend := 2
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "α" Greek_grave Greek_iotaSub
						numKeysToSend := 3
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "α" Greek_macron Greek_grave
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "α" Greek_breve Greek_grave
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "circumflex")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "α" Greek_circumflex
						numKeysToSend := 2
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "α" Greek_circumflex Greek_iotaSub
						numKeysToSend := 3
					}
				}
			}
			else if (Greek_breathing = "smooth")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "α" Greek_smooth
						numKeysToSend := 2
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "α" Greek_smooth Greek_iotaSub
						numKeysToSend := 3
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "α" Greek_macron Greek_smooth
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "α" Greek_breve Greek_smooth
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "α" Greek_smooth Greek_acute
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "α" Greek_smooth Greek_acute Greek_iotaSub
						numKeysToSend := 4
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "α" Greek_macron Greek_smooth Greek_acute
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "α" Greek_breve Greek_smooth Greek_acute
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "α" Greek_smooth Greek_grave
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "α" Greek_smooth Greek_grave Greek_iotaSub
						numKeysToSend := 4
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "α" Greek_macron Greek_smooth Greek_grave
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "α" Greek_breve Greek_smooth Greek_grave
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "circumflex")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "α" Greek_smooth Greek_circumflex
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "α" Greek_smooth Greek_circumflex Greek_iotaSub
						numKeysToSend := 4
					}
				}
			}
			else if (Greek_breathing = "rough")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "α" Greek_rough
						numKeysToSend := 2
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "α" Greek_rough Greek_iotaSub
						numKeysToSend := 3
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "α" Greek_macron Greek_rough
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "α" Greek_breve Greek_rough
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "α" Greek_rough Greek_acute
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "α" Greek_rough Greek_acute Greek_iotaSub
						numKeysToSend := 4
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "α" Greek_macron Greek_rough Greek_acute
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "α" Greek_breve Greek_rough Greek_acute
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "α" Greek_rough Greek_grave
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "α" Greek_rough Greek_grave Greek_iotaSub
						numKeysToSend := 4
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "α" Greek_macron Greek_rough Greek_grave
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "α" Greek_breve Greek_rough Greek_grave
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "circumflex")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "α" Greek_rough Greek_circumflex
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "α" Greek_rough Greek_circumflex Greek_iotaSub
						numKeysToSend := 4
					}
				}
			}
		}
			
		else if (Greek_vowel = "e")
		{
			if (Greek_breathing = "")
			{
				if (Greek_accent = "")
				{
					keysToSend := "ε"
				}
				else if (Greek_accent = "acute")
				{
					keysToSend := "ε" Greek_acute
					numKeysToSend := 2
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "ε" Greek_grave
					numKeysToSend := 2
				}
			}
			else if (Greek_breathing = "smooth")
			{
				if (Greek_accent = "")
				{
					keysToSend := "ε" Greek_smooth
					numKeysToSend := 2
				}
				else if (Greek_accent = "acute")
				{
					keysToSend := "ε" Greek_smooth Greek_acute
					numKeysToSend := 3
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "ε" Greek_smooth Greek_grave
					numKeysToSend := 3
				}
			}
			else if (Greek_breathing = "rough")
			{
				if (Greek_accent = "")
				{
					keysToSend := "ε" Greek_rough
					numKeysToSend := 2
				}
				else if (Greek_accent = "acute")
				{
					keysToSend := "ε" Greek_rough Greek_acute
					numKeysToSend := 3
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "ε" Greek_rough Greek_grave
					numKeysToSend := 3
				}
			}
		}
		
		else if (Greek_vowel = "h")
		{
			if (Greek_breathing = "")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "η"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "η" Greek_iotaSub
						numKeysToSend := 2
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "η" Greek_acute
						numKeysToSend := 2
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "η" Greek_acute Greek_iotaSub
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "η" Greek_grave
						numKeysToSend := 2
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "η" Greek_grave Greek_iotaSub
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "circumflex")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "η" Greek_circumflex
						numKeysToSend := 2
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "η" Greek_circumflex Greek_iotaSub
						numKeysToSend := 3
					}
				}
			}
			else if (Greek_breathing = "smooth")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "η" Greek_smooth
						numKeysToSend := 2
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "η" Greek_smooth Greek_iotaSub
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "η" Greek_smooth Greek_acute
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "η" Greek_smooth Greek_acute Greek_iotaSub
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "η" Greek_smooth Greek_grave
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "η" Greek_smooth Greek_grave Greek_iotaSub
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "circumflex")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "η" Greek_smooth Greek_circumflex
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "η" Greek_smooth Greek_circumflex Greek_iotaSub
						numKeysToSend := 4
					}
				}
			}
			else if (Greek_breathing = "rough")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "η" Greek_rough
						numKeysToSend := 2
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "η" Greek_rough Greek_iotaSub
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "η" Greek_rough Greek_acute
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "η" Greek_rough Greek_acute Greek_iotaSub
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "η" Greek_rough Greek_grave
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "η" Greek_rough Greek_grave Greek_iotaSub
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "circumflex")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "η" Greek_rough Greek_circumflex
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "η" Greek_rough Greek_circumflex Greek_iotaSub
						numKeysToSend := 4
					}
				}
			}
		}
		
		else if (Greek_vowel = "i")
		{
			if (Greek_breathing = "")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ι"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "ι" Greek_macron
						numKeysToSend := 2
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "ι" Greek_breve
						numKeysToSend := 2
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ι" Greek_acute
						numKeysToSend := 2
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "ι" Greek_macron Greek_acute
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "ι" Greek_breve Greek_acute
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ι" Greek_grave
						numKeysToSend := 2
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "ι" Greek_macron Greek_grave
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "ι" Greek_breve Greek_grave
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "circumflex")
				{
						keysToSend := "ι" Greek_circumflex
						numKeysToSend := 2
				}
			}
			else if (Greek_breathing = "smooth")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ι" Greek_smooth
						numKeysToSend := 2
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "ι" Greek_macron Greek_smooth
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "ι" Greek_breve Greek_smooth
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ι" Greek_smooth Greek_acute
						numKeysToSend := 3
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "ι" Greek_macron Greek_smooth Greek_acute
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "ι" Greek_breve Greek_smooth Greek_acute
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ι" Greek_smooth Greek_grave
						numKeysToSend := 3
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "ι" Greek_macron Greek_smooth Greek_grave
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "ι" Greek_breve Greek_smooth Greek_grave
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "circumflex")
				{
					keysToSend := "ι" Greek_smooth Greek_circumflex
					numKeysToSend := 3
				}
			}
			else if (Greek_breathing = "rough")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ι" Greek_rough
						numKeysToSend := 2
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "ι" Greek_macron Greek_rough
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "ι" Greek_breve Greek_rough
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ι" Greek_rough Greek_acute
						numKeysToSend := 3
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "ι" Greek_macron Greek_rough Greek_acute
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "ι" Greek_breve Greek_rough Greek_acute
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ι" Greek_rough Greek_grave
						numKeysToSend := 3
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "ι" Greek_macron Greek_rough Greek_grave
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "ι" Greek_breve Greek_rough Greek_grave
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "circumflex")
				{
					keysToSend := "ι" Greek_rough Greek_circumflex
					numKeysToSend := 3
				}
			}
			else if (Greek_breathing = "diaeresis")
			{
				if (Greek_accent = "")
				{
					keysToSend := "ι" Greek_diaeresis
					numKeysToSend := 2
				}
				else if (Greek_accent = "acute")
				{
					keysToSend := "ι" Greek_diaeresis Greek_acute
					numKeysToSend := 3
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "ι" Greek_diaeresis Greek_grave
					numKeysToSend := 3
				}
				else if (Greek_accent = "circumflex")
				{
					keysToSend := "ι" Greek_diaeresis Greek_circumflex
					numKeysToSend := 3
				}
			}
		}
			
		else if (Greek_vowel = "o")
		{
			if (Greek_breathing = "")
			{
				if (Greek_accent = "")
				{
					keysToSend := "ο"
				}
				else if (Greek_accent = "acute")
				{
					keysToSend := "ο" Greek_acute
					numKeysToSend := 2
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "ο" Greek_grave
					numKeysToSend := 2
				}
			}
			else if (Greek_breathing = "smooth")
			{
				if (Greek_accent = "")
				{
					keysToSend := "ο" Greek_smooth
					numKeysToSend := 2
				}
				else if (Greek_accent = "acute")
				{
					keysToSend := "ο" Greek_smooth Greek_acute
					numKeysToSend := 3
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "ο" Greek_smooth Greek_grave
					numKeysToSend := 3
				}
			}
			else if (Greek_breathing = "rough")
			{
				if (Greek_accent = "")
				{
					keysToSend := "ο" Greek_rough
					numKeysToSend := 2
				}
				else if (Greek_accent = "acute")
				{
					keysToSend := "ο" Greek_rough Greek_acute
					numKeysToSend := 3
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "ο" Greek_rough Greek_grave
					numKeysToSend := 3
				}
			}
		}
		
		else if (Greek_vowel = "u")
		{
			if (Greek_breathing = "")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "υ"
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "υ" Greek_macron
						numKeysToSend := 2
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "υ" Greek_breve
						numKeysToSend := 2
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "υ" Greek_acute
						numKeysToSend := 2
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "υ" Greek_macron Greek_acute
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "υ" Greek_breve Greek_acute
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "υ" Greek_grave
						numKeysToSend := 2
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "υ" Greek_macron Greek_grave
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "υ" Greek_breve Greek_grave
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "circumflex")
				{
					keysToSend := "υ" Greek_circumflex
					numKeysToSend := 2
				}
			}
			else if (Greek_breathing = "smooth")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "υ" Greek_smooth
						numKeysToSend := 2
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "υ" Greek_macron Greek_smooth
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "υ" Greek_breve Greek_smooth
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "υ" Greek_smooth Greek_acute
						numKeysToSend := 3
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "υ" Greek_macron Greek_smooth Greek_acute
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "υ" Greek_breve Greek_smooth Greek_acute
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "υ" Greek_smooth Greek_grave
						numKeysToSend := 3
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "υ" Greek_macron Greek_smooth Greek_grave
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "υ" Greek_breve Greek_smooth Greek_grave
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "circumflex")
				{
					keysToSend := "υ" Greek_smooth Greek_circumflex
					numKeysToSend := 3
				}
			}
			else if (Greek_breathing = "rough")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "υ" Greek_rough
						numKeysToSend := 2
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "υ" Greek_macron Greek_rough
						numKeysToSend := 3
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "υ" Greek_breve Greek_rough
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "υ" Greek_rough Greek_acute
						numKeysToSend := 3
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "υ" Greek_macron Greek_rough Greek_acute
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "υ" Greek_breve Greek_rough Greek_acute
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "υ" Greek_rough Greek_grave
						numKeysToSend := 3
					}
					else if (Greek_quantity = "macron")
					{
						keysToSend := "υ" Greek_macron Greek_rough Greek_grave
						numKeysToSend := 4
					}
					else if (Greek_quantity = "breve")
					{
						keysToSend := "υ" Greek_breve Greek_rough Greek_grave
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "circumflex")
				{
					keysToSend := "υ" Greek_rough Greek_circumflex
					numKeysToSend := 3
				}
			}
			else if (Greek_breathing = "diaeresis")
			{
				if (Greek_accent = "")
				{
					keysToSend := "υ" Greek_diaeresis
					numKeysToSend := 2
				}
				else if (Greek_accent = "acute")
				{
					keysToSend := "υ" Greek_diaeresis Greek_acute
					numKeysToSend := 3
				}
				else if (Greek_accent = "grave")
				{
					keysToSend := "υ" Greek_diaeresis Greek_grave
					numKeysToSend := 3
				}
				else if (Greek_accent = "circumflex")
				{
					keysToSend := "υ" Greek_diaeresis Greek_circumflex
					numKeysToSend := 3
				}
			}
		}
		
		else if (Greek_vowel = "w")
		{
			if (Greek_breathing = "")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ω"
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ω" Greek_iotaSub
						numKeysToSend := 2
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ω" Greek_acute
						numKeysToSend := 2
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ω" Greek_acute Greek_iotaSub
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ω" Greek_grave
						numKeysToSend := 2
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ω" Greek_grave Greek_iotaSub
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "circumflex")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ω" Greek_circumflex
						numKeysToSend := 2
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ω" Greek_circumflex Greek_iotaSub
						numKeysToSend := 3
					}
				}
			}
			else if (Greek_breathing = "smooth")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ω" Greek_smooth
						numKeysToSend := 2
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ω" Greek_smooth Greek_iotaSub
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ω" Greek_smooth Greek_acute
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ω" Greek_smooth Greek_acute Greek_iotaSub
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ω" Greek_smooth Greek_grave
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ω" Greek_smooth Greek_grave Greek_iotaSub
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "circumflex")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ω" Greek_smooth Greek_circumflex
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ω" Greek_smooth Greek_circumflex Greek_iotaSub
						numKeysToSend := 4
					}
				}
			}
			else if (Greek_breathing = "rough")
			{
				if (Greek_accent = "")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ω" Greek_rough
						numKeysToSend := 2
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ω" Greek_rough Greek_iotaSub
						numKeysToSend := 3
					}
				}
				else if (Greek_accent = "acute")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ω" Greek_rough Greek_acute
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ω" Greek_rough Greek_acute Greek_iotaSub
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "grave")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ω" Greek_rough Greek_grave
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ω" Greek_rough Greek_grave Greek_iotaSub
						numKeysToSend := 4
					}
				}
				else if (Greek_accent = "circumflex")
				{
					if (Greek_quantity = "")
					{
						keysToSend := "ω" Greek_rough Greek_circumflex
						numKeysToSend := 3
					}
					else if (Greek_quantity = "iota")
					{
						keysToSend := "ω" Greek_rough Greek_circumflex Greek_iotaSub
						numKeysToSend := 4
					}
				}
			}
		}
		
		else if (Greek_vowel = "r")
		{
			if (Greek_breathing = "")
			{
				keysToSend := "ρ"
			}
			else if (Greek_breathing = "smooth")
			{
				keysToSend := "ρ" Greek_smooth
				numKeysToSend := 2
			}
			else if (Greek_breathing = "rough")
			{
				keysToSend := "ρ" Greek_rough
				numKeysToSend := 2
			}
		}
	}
	
	if(Greek_dot)
	{
		keysToSend := keysToSend Greek_underDot
		numKeysToSend := numKeysToSend + 1
	}
	
	return [keysToSend, numKeysToSend]
}


Greek_resetDiacritics() 
{
	Greek_breathing := ""
	Greek_accent := ""
	Greek_quantity := ""
	Greek_dot := false
	return
}


Greek_resetVowel() 
{
	Greek_capital := false
	Greek_vowel := ""
	Greek_breathing := ""
	Greek_accent := ""
	Greek_quantity := ""
	Greek_dot := false
	return
}


Greek_handleFinalSigma() {

	if(useLunateSigma)
	{
		return
	}

	lastKey := A_PriorHotkey

	if((lastKey = "*LShift") or (lastKey = "*LShift Up"))
	{
		lastKey := lastRealKeyDown
	}
	else if((lastKey = "*RShift") or (lastKey = "*RShift Up"))
	{
		lastKey := lastRealKeyDown
	}
	else
	{
		lastKey := Dual.cleanKey(lastKey)
	}

	if(lastKey = "s")
	{
		SendInput {Backspace}ς
	}
	return
}