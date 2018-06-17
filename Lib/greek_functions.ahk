addDiacritic() {

	thisDiacriticKey := A_TickCount

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
		lastDiacriticKey := thisDiacriticKey
		numKeysToBackspace := numKeysToSend
	}
	else
	{
		breathing := priorState[1]
		accent := priorState[2]
		quantity := priorState[3]
	}
}


Greek_precomposed() {

	keysToSend := ""
	numKeysToSend := 1

	if (capital) {
		if (vowel = "a")
		{
			if (breathing = "")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "Α"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾼ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "Ᾱ"
					}
					else if (quantity = "breve")
					{
						keysToSend := "Ᾰ"
					}
				}
				else if (accent = "acute")
				{
						keysToSend := "Ά"
				}
				else if (accent = "grave")
				{
					keysToSend := "Ὰ"
				}
			}
			else if (breathing = "smooth")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "Ἀ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾈ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "Α" macron smooth
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "Α" breve smooth
						numKeysToSend := 3
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "Ἄ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾌ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "Α" macron smooth acute
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "Α" breve smooth acute
						numKeysToSend := 4
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "Ἂ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾊ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "Α" macron smooth grave
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "Α" breve smooth grave
						numKeysToSend := 4
					}
				}
				else if (accent = "circumflex")
				{
					if (quantity = "")
					{
						keysToSend := "Ἆ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾎ"
					}
				}
			}
			else if (breathing = "rough")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "Ἁ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾉ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "Α" macron rough
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "Α" breve rough
						numKeysToSend := 3
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "Ἅ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾍ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "Α" macron rough acute
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "Α" breve rough acute
						numKeysToSend := 4
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "Ἃ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾋ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "Α" macron rough grave
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "Α" breve rough grave
						numKeysToSend := 4
					}
				}
				else if (accent = "circumflex")
				{
					if (quantity = "")
					{
						keysToSend := "Ἇ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾏ"
					}
				}
			}
		}
		
		else if (vowel = "e")
		{
			if (breathing = "")
			{
				if (accent = "")
				{
					keysToSend := "Ε"
				}
				else if (accent = "acute")
				{
					keysToSend := "Έ"
				}
				else if (accent = "grave")
				{
					keysToSend := "Ὲ"
				}
			}
			else if (breathing = "smooth")
			{
				if (accent = "")
				{
					keysToSend := "Ἐ"
				}
				else if (accent = "acute")
				{
					keysToSend := "Ἔ"
				}
				else if (accent = "grave")
				{
					keysToSend := "Ἒ"
				}
			}
			else if (breathing = "rough")
			{
				if (accent = "")
				{
					keysToSend := "Ἑ"
				}
				else if (accent = "acute")
				{
					keysToSend := "Ἕ"
				}
				else if (accent = "grave")
				{
					keysToSend := "Ἓ"
				}
			}
		}
		
		else if (vowel = "h")
		{
			if (breathing = "")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "Η"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ῌ"
					}
				}
				else if (accent = "acute")
				{
					keysToSend := "Ή"
				}
				else if (accent = "grave")
				{
					keysToSend := "Ὴ"
				}
			}
			else if (breathing = "smooth")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "Ἠ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾘ"
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "Ἤ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾜ"
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "Ἢ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾚ"
					}
				}
				else if (accent = "circumflex")
				{
					if (quantity = "")
					{
						keysToSend := "Ἦ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾞ"
					}
				}
			}
			else if (breathing = "rough")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "Ἡ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾙ"
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "Ἥ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾝ"
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "Ἣ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾛ"
					}
				}
				else if (accent = "circumflex")
				{
					if (quantity = "")
					{
						keysToSend := "Ἧ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾟ"
					}
				}
			}
		}
		
		else if (vowel = "i")
		{
			if (breathing = "")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "Ι"
					}
					else if (quantity = "macron")
					{
						keysToSend := "Ῑ"
					}
					else if (quantity = "breve")
					{
						keysToSend := "Ῐ"
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "Ί"
					}
					else if (quantity = "macron")
					{
						keysToSend := "Ι" macron acute
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "Ι" breve acute
						numKeysToSend := 3
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "Ὶ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "Ι" macron grave
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "Ι" breve grave
						numKeysToSend := 3
					}
				}
			}
			else if (breathing = "smooth")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "Ἰ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "Ι" macron smooth
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "Ι" breve smooth
						numKeysToSend := 3
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "Ἴ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "Ι" macron smooth acute
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "Ι" breve smooth acute
						numKeysToSend := 4
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "Ἲ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "Ι" macron smooth grave
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "Ι" breve smooth grave
						numKeysToSend := 4
					}
				}
				else if (accent = "circumflex")
				{
					keysToSend := "Ἶ"
				}
			}
			else if (breathing = "rough")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "Ἱ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "Ι" macron rough
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "Ι" breve rough
						numKeysToSend := 3
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "Ἵ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "Ι" macron rough acute
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "Ι" breve rough acute
						numKeysToSend := 4
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "Ἳ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "Ι" macron rough grave
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "Ι" breve rough grave
						numKeysToSend := 4
					}
				}
				else if (accent = "circumflex")
				{
					keysToSend := "Ἷ"
				}
			}
			else if (breathing = "diaeresis")
			{
				keysToSend := "Ϊ"
			}
		}
		
		else if (vowel = "o")
		{
			if (breathing = "")
			{
				if (accent = "")
				{
					keysToSend := "Ο"
				}
				else if (accent = "acute")
				{
					keysToSend := "Ό"
				}
				else if (accent = "grave")
				{
					keysToSend := "Ὸ"
				}
			}
			else if (breathing = "smooth")
			{
				if (accent = "")
				{
					keysToSend := "Ὀ"
				}
				else if (accent = "acute")
				{
					keysToSend := "Ὄ"
				}
				else if (accent = "grave")
				{
					keysToSend := "Ὂ"
				}
			}
			else if (breathing = "rough")
			{
				if (accent = "")
				{
					keysToSend := "Ὁ"
				}
				else if (accent = "acute")
				{
					keysToSend := "Ὅ"
				}
				else if (accent = "grave")
				{
					keysToSend := "Ὃ"
				}
			}
		}
		
		else if (vowel = "u")
		{
			if (breathing = "")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "Υ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "Ῡ"
					}
					else if (quantity = "breve")
					{
						keysToSend := "Ῠ"
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "Ύ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "Υ" macron acute
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "Υ" breve acute
						numKeysToSend := 3
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "Ὺ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "Υ" macron grave
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "Υ" breve grave
						numKeysToSend := 3
					}
				}
			}
			else if (breathing = "rough")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "Ὑ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "Υ" macron rough
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "Υ" breve rough
						numKeysToSend := 3
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "Ὕ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "Υ" macron rough acute
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "Υ" breve rough acute
						numKeysToSend := 4
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "Ὓ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "Υ" macron rough grave
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "Υ" breve rough grave
						numKeysToSend := 4
					}
				}
				else if (accent = "circumflex")
				{
					keysToSend := "Ὗ"
				}
			}
			else if (breathing = "diaeresis")
			{
				keysToSend := "Ϋ"
			}
		}
		
		else if (vowel = "w")
		{
			if (breathing = "")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "Ω"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ῼ"
					}
				}
				else if (accent = "acute")
				{
					keysToSend := "Ώ"
				}
				else if (accent = "grave")
				{
					keysToSend := "Ὼ"
				}
			}
			else if (breathing = "smooth")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "Ὠ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾨ"
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "Ὤ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾬ"
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "Ὢ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾪ"
					}
				}
				else if (accent = "circumflex")
				{
					if (quantity = "")
					{
						keysToSend := "Ὦ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾮ"
					}
				}
			}
			else if (breathing = "rough")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "Ὡ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾩ"
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "Ὥ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾭ"
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "Ὣ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾫ"
					}
				}
				else if (accent = "circumflex")
				{
					if (quantity = "")
					{
						keysToSend := "Ὧ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾯ"
					}
				}
			}
		}
		
		else if (vowel = "r")
		{
			if (breathing = "")
			{
				keysToSend := "Ρ"
			}
			else if (breathing = "rough")
			{
				keysToSend := "Ῥ"
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
						keysToSend := "α"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾳ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "ᾱ"
					}
					else if (quantity = "breve")
					{
						keysToSend := "ᾰ"
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "ά"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾴ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "α" macron acute
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "α" breve acute
						numKeysToSend := 3
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "ὰ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾲ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "α" macron grave
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "α" breve grave
						numKeysToSend := 3
					}
				}
				else if (accent = "circumflex")
				{
					if (quantity = "")
					{
						keysToSend := "ᾶ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾷ"
					}
				}
			}
			else if (breathing = "smooth")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "ἀ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾀ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "α" macron smooth
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "α" breve smooth
						numKeysToSend := 3
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "ἄ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾄ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "α" macron smooth acute
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "α" breve smooth acute
						numKeysToSend := 4
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "ἂ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾂ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "α" macron smooth grave
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "α" breve smooth grave
						numKeysToSend := 4
					}
				}
				else if (accent = "circumflex")
				{
					if (quantity = "")
					{
						keysToSend := "ἆ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾆ"
					}
				}
			}
			else if (breathing = "rough")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "ἁ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾁ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "α" macron rough
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "α" breve rough
						numKeysToSend := 3
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "ἅ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾅ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "α" macron rough acute
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "α" breve rough acute
						numKeysToSend := 4
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "ἃ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾃ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "α" macron rough grave
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "α" breve rough grave
						numKeysToSend := 4
					}
				}
				else if (accent = "circumflex")
				{
					if (quantity = "")
					{
						keysToSend := "ἇ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾇ"
					}
				}
			}
		}
			
		else if (vowel = "e")
		{
			if (breathing = "")
			{
				if (accent = "")
				{
					keysToSend := "ε"
				}
				else if (accent = "acute")
				{
					keysToSend := "έ"
				}
				else if (accent = "grave")
				{
					keysToSend := "ὲ"
				}
			}
			else if (breathing = "smooth")
			{
				if (accent = "")
				{
					keysToSend := "ἐ"
				}
				else if (accent = "acute")
				{
					keysToSend := "ἔ"
				}
				else if (accent = "grave")
				{
					keysToSend := "ἒ"
				}
			}
			else if (breathing = "rough")
			{
				if (accent = "")
				{
					keysToSend := "ἑ"
				}
				else if (accent = "acute")
				{
					keysToSend := "ἕ"
				}
				else if (accent = "grave")
				{
					keysToSend := "ἓ"
				}
			}
		}
		
		else if (vowel = "h")
		{
			if (breathing = "")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "η"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ῃ"
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "ή"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ῄ"
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "ὴ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ῂ"
					}
				}
				else if (accent = "circumflex")
				{
					if (quantity = "")
					{
						keysToSend := "ῆ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ῇ"
					}
				}
			}
			else if (breathing = "smooth")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "ἠ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾐ"
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "ἤ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾔ"
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "ἢ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾒ"
					}
				}
				else if (accent = "circumflex")
				{
					if (quantity = "")
					{
						keysToSend := "ἦ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾖ"
					}
				}
			}
			else if (breathing = "rough")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "ἡ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾑ"
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "ἥ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾕ"
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "ἣ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾓ"
					}
				}
				else if (accent = "circumflex")
				{
					if (quantity = "")
					{
						keysToSend := "ἧ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾗ"
					}
				}
			}
		}
		
		else if (vowel = "i")
		{
			if (breathing = "")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "ι"
					}
					else if (quantity = "macron")
					{
						keysToSend := "ῑ"
					}
					else if (quantity = "breve")
					{
						keysToSend := "ῐ"
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "ί"
					}
					else if (quantity = "macron")
					{
						keysToSend := "ι" macron acute
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "ι" breve acute
						numKeysToSend := 3
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "ὶ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "ι" macron grave
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "ι" breve grave
						numKeysToSend := 3
					}
				}
				else if (accent = "circumflex")
				{
					keysToSend := "ῖ"
				}
			}
			else if (breathing = "smooth")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "ἰ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "ι" macron smooth
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "ι" breve smooth
						numKeysToSend := 3
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "ἴ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "ι" macron smooth acute
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "ι" breve smooth acute
						numKeysToSend := 4
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "ἲ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "ι" macron smooth grave
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "ι" breve smooth grave
						numKeysToSend := 4
					}
				}
				else if (accent = "circumflex")
				{
					keysToSend := "ἶ"
				}
			}
			else if (breathing = "rough")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "ἱ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "ι" macron rough
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "ι" breve rough
						numKeysToSend := 3
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "ἵ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "ι" macron rough acute
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "ι" breve rough acute
						numKeysToSend := 4
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "ἳ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "ι" macron rough grave
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "ι" breve rough grave
						numKeysToSend := 4
					}
				}
				else if (accent = "circumflex")
				{
					keysToSend := "ἷ"
				}
			}
			else if (breathing = "diaeresis")
			{
				if (accent = "")
				{
					keysToSend := "ϊ"
				}
				else if (accent = "acute")
				{
					keysToSend := "ΐ"
				}
				else if (accent = "grave")
				{
					keysToSend := "ῒ"
				}
				else if (accent = "circumflex")
				{
					keysToSend := "ῗ"
				}
			}
		}
			
		else if (vowel = "o")
		{
			if (breathing = "")
			{
				if (accent = "")
				{
					keysToSend := "ο"
				}
				else if (accent = "acute")
				{
					keysToSend := "ό"
				}
				else if (accent = "grave")
				{
					keysToSend := "ὸ"
				}
			}
			else if (breathing = "smooth")
			{
				if (accent = "")
				{
					keysToSend := "ὀ"
				}
				else if (accent = "acute")
				{
					keysToSend := "ὄ"
				}
				else if (accent = "grave")
				{
					keysToSend := "ὂ"
				}
			}
			else if (breathing = "rough")
			{
				if (accent = "")
				{
					keysToSend := "ὁ"
				}
				else if (accent = "acute")
				{
					keysToSend := "ὅ"
				}
				else if (accent = "grave")
				{
					keysToSend := "ὃ"
				}
			}
		}
		
		else if (vowel = "u")
		{
			if (breathing = "")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "υ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "ῡ"
					}
					else if (quantity = "breve")
					{
						keysToSend := "ῠ"
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "ύ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "υ" macron acute
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "υ" breve acute
						numKeysToSend := 3
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "ὺ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "υ" macron grave
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "υ" breve grave
						numKeysToSend := 3
					}
				}
				else if (accent = "circumflex")
				{
					keysToSend := "ῦ"
				}
			}
			else if (breathing = "smooth")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "ὐ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "υ" macron smooth
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "υ" breve smooth
						numKeysToSend := 3
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "ὔ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "υ" macron smooth acute
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "υ" breve smooth acute
						numKeysToSend := 4
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "ὒ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "υ" macron smooth grave
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "υ" breve smooth grave
						numKeysToSend := 4
					}
				}
				else if (accent = "circumflex")
				{
					keysToSend := "ὖ"
				}
			}
			else if (breathing = "rough")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "ὑ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "υ" macron rough
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "υ" breve rough
						numKeysToSend := 3
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "ὕ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "υ" macron rough acute
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "υ" breve rough acute
						numKeysToSend := 4
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "ὓ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "υ" macron rough grave
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "υ" breve rough grave
						numKeysToSend := 4
					}
				}
				else if (accent = "circumflex")
				{
					keysToSend := "ὗ"
				}
			}
			else if (breathing = "diaeresis")
			{
				if (accent = "")
				{
					keysToSend := "ϋ"
				}
				else if (accent = "acute")
				{
					keysToSend := "ΰ"
				}
				else if (accent = "grave")
				{
					keysToSend := "ῢ"
				}
				else if (accent = "circumflex")
				{
					keysToSend := "ῧ"
				}
			}
		}
		
		else if (vowel = "w")
		{
			if (breathing = "")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "ω"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ῳ"
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "ώ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ῴ"
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "ὼ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ῲ"
					}
				}
				else if (accent = "circumflex")
				{
					if (quantity = "")
					{
						keysToSend := "ῶ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ῷ"
					}
				}
			}
			else if (breathing = "smooth")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "ὠ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾠ"
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "ὤ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾤ"
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "ὢ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾢ"
					}
				}
				else if (accent = "circumflex")
				{
					if (quantity = "")
					{
						keysToSend := "ὦ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾦ"
					}
				}
			}
			else if (breathing = "rough")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "ὡ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾡ"
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "ὥ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾥ"
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "ὣ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾣ"
					}
				}
				else if (accent = "circumflex")
				{
					if (quantity = "")
					{
						keysToSend := "ὧ"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ᾧ"
					}
				}
			}
		}
		
		else if (vowel = "r")
		{
			if (breathing = "")
			{
				keysToSend := "ρ"
			}
			else if (breathing = "smooth")
			{
				keysToSend := "ῤ"
			}
			else if (breathing = "rough")
			{
				keysToSend := "ῥ"
			}
		}
	}
	
	return [keysToSend, numKeysToSend]
}


Greek_decomposed() {

	keysToSend := ""
	numKeysToSend := 1

	if (capital) {
		if (vowel = "a")
		{
			if (breathing = "")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "Α"
					}
					else if (quantity = "iota")
					{
						keysToSend := "Α" iotaSub
						numKeysToSend := 2
					}
					else if (quantity = "macron")
					{
						keysToSend := "Α" macron
						numKeysToSend := 2
					}
					else if (quantity = "breve")
					{
						keysToSend := "Α" breve
						numKeysToSend := 2
					}
				}
				else if (accent = "acute")
				{
					keysToSend := "Α" acute
					numKeysToSend := 2
				}
				else if (accent = "grave")
				{
					keysToSend := "Α" grave
					numKeysToSend := 2
				}
			}
			else if (breathing = "smooth")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "Α" smooth
						numKeysToSend := 2
					}
					else if (quantity = "iota")
					{
						keysToSend := "Α" smooth iotaSub
						numKeysToSend := 3
					}
					else if (quantity = "macron")
					{
						keysToSend := "Α" macron smooth
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "Α" breve smooth
						numKeysToSend := 3
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "Α" smooth acute
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "Α" smooth acute iotaSub
						numKeysToSend := 4
					}
					else if (quantity = "macron")
					{
						keysToSend := "Α" macron smooth acute
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "Α" breve smooth acute
						numKeysToSend := 4
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "Α" smooth grave
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "Α" smooth grave iotaSub
						numKeysToSend := 4
					}
					else if (quantity = "macron")
					{
						keysToSend := "Α" macron smooth grave
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "Α" breve smooth grave
						numKeysToSend := 4
					}
				}
				else if (accent = "circumflex")
				{
					if (quantity = "")
					{
						keysToSend := "Α" smooth circumflex
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "Α" smooth circumflex iotaSub
						numKeysToSend := 4
					}
				}
			}
			else if (breathing = "rough")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "Α" rough
						numKeysToSend := 2
					}
					else if (quantity = "iota")
					{
						keysToSend := "Α" rough iotaSub
						numKeysToSend := 3
					}
					else if (quantity = "macron")
					{
						keysToSend := "Α" macron rough
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "Α" breve rough
						numKeysToSend := 3
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "Α" rough acute
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "Α" rough acute iotaSub
						numKeysToSend := 4
					}
					else if (quantity = "macron")
					{
						keysToSend := "Α" macron rough acute
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "Α" breve rough acute
						numKeysToSend := 4
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "Α" rough grave
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "Α" rough grave iotaSub
						numKeysToSend := 4
					}
					else if (quantity = "macron")
					{
						keysToSend := "Α" macron rough grave
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "Α" breve rough grave
						numKeysToSend := 4
					}
				}
				else if (accent = "circumflex")
				{
					if (quantity = "")
					{
						keysToSend := "Α" rough circumflex
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "Α" rough circumflex iotaSub
						numKeysToSend := 4
					}
				}
			}
		}
		
		else if (vowel = "e")
		{
			if (breathing = "")
			{
				if (accent = "")
				{
					keysToSend := "Ε"
				}
				else if (accent = "acute")
				{
					keysToSend := "Ε" acute
					numKeysToSend := 2
				}
				else if (accent = "grave")
				{
					keysToSend := "Ε" grave
					numKeysToSend := 2
				}
			}
			else if (breathing = "smooth")
			{
				if (accent = "")
				{
					keysToSend := "Ε" smooth
					numKeysToSend := 2
				}
				else if (accent = "acute")
				{
					keysToSend := "Ε" smooth acute
					numKeysToSend := 3
				}
				else if (accent = "grave")
				{
					keysToSend := "Ε" smooth grave
					numKeysToSend := 3
				}
			}
			else if (breathing = "rough")
			{
				if (accent = "")
				{
					keysToSend := "Ε" rough
					numKeysToSend := 2
				}
				else if (accent = "acute")
				{
					keysToSend := "Ε" rough acute
					numKeysToSend := 3
				}
				else if (accent = "grave")
				{
					keysToSend := "Ε" rough grave
					numKeysToSend := 3
				}
			}
		}
		
		else if (vowel = "h")
		{
			if (breathing = "")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "Η"
					}
					else if (quantity = "iota")
					{
						keysToSend := "Η" iotaSub
						numKeysToSend := 2
					}
				}
				else if (accent = "acute")
				{
					keysToSend := "Η" acute
					numKeysToSend := 2
				}
				else if (accent = "grave")
				{
					keysToSend := "Η" grave
					numKeysToSend := 2
				}
			}
			else if (breathing = "smooth")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "Η" smooth
						numKeysToSend := 2
					}
					else if (quantity = "iota")
					{
						keysToSend := "Η" smooth iotaSub
						numKeysToSend := 3
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "Η" smooth acute
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "Η" smooth acute iotaSub
						numKeysToSend := 4
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "Η" smooth grave
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "Η" smooth grave iotaSub
						numKeysToSend := 4
					}
				}
				else if (accent = "circumflex")
				{
					if (quantity = "")
					{
						keysToSend := "Η" smooth circumflex
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "Η" smooth circumflex iotaSub
						numKeysToSend := 3
					}
				}
			}
			else if (breathing = "rough")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "Η" rough
						numKeysToSend := 2
					}
					else if (quantity = "iota")
					{
						keysToSend := "Η" rough iotaSub
						numKeysToSend := 3
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "Η" rough acute
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "Η" rough acute iotaSub
						numKeysToSend := 4
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "Η" rough grave
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "Η" rough grave iotaSub
						numKeysToSend := 4
					}
				}
				else if (accent = "circumflex")
				{
					if (quantity = "")
					{
						keysToSend := "Η" rough circumflex
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "Η" rough circumflex iotaSub
						numKeysToSend := 4
					}
				}
			}
		}
		
		else if (vowel = "i")
		{
			if (breathing = "")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "Ι"
					}
					else if (quantity = "macron")
					{
						keysToSend := "Ι" macron
						numKeysToSend := 2
					}
					else if (quantity = "breve")
					{
						keysToSend := "Ι" breve
						numKeysToSend := 2
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "Ι" acute
						numKeysToSend := 2
					}
					else if (quantity = "macron")
					{
						keysToSend := "Ι" macron acute
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "Ι" breve acute
						numKeysToSend := 3
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "Ι" grave
						numKeysToSend := 2
					}
					else if (quantity = "macron")
					{
						keysToSend := "Ι" macron grave
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "Ι" breve grave
						numKeysToSend := 3
					}
				}
			}
			else if (breathing = "smooth")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "Ι" smooth
						numKeysToSend := 2
					}
					else if (quantity = "macron")
					{
						keysToSend := "Ι" macron smooth
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "Ι" breve smooth
						numKeysToSend := 3
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "Ι" smooth acute
						numKeysToSend := 3
					}
					else if (quantity = "macron")
					{
						keysToSend := "Ι" macron smooth acute
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "Ι" breve smooth acute
						numKeysToSend := 4
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "Ι" smooth grave
						numKeysToSend := 3
					}
					else if (quantity = "macron")
					{
						keysToSend := "Ι" macron smooth grave
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "Ι" breve smooth grave
						numKeysToSend := 4
					}
				}
				else if (accent = "circumflex")
				{
					keysToSend := "Ι" smooth circumflex
					numKeysToSend := 3
				}
			}
			else if (breathing = "rough")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "Ι" rough
						numKeysToSend := 2
					}
					else if (quantity = "macron")
					{
						keysToSend := "Ι" macron rough
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "Ι" breve rough
						numKeysToSend := 3
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "Ι" rough acute
						numKeysToSend := 3
					}
					else if (quantity = "macron")
					{
						keysToSend := "Ι" macron rough acute
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "Ι" breve rough acute
						numKeysToSend := 4
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "Ι" rough grave
						numKeysToSend := 3
					}
					else if (quantity = "macron")
					{
						keysToSend := "Ι" macron rough grave
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "Ι" breve rough grave
						numKeysToSend := 4
					}
				}
				else if (accent = "circumflex")
				{
					keysToSend := "Ι" rough circumflex
					numKeysToSend := 3
				}
			}
			else if (breathing = "diaeresis")
			{
				keysToSend := "Ι" diaeresis
				numKeysToSend := 2
			}
		}
		
		else if (vowel = "o")
		{
			if (breathing = "")
			{
				if (accent = "")
				{
					keysToSend := "Ο"
				}
				else if (accent = "acute")
				{
					keysToSend := "Ο" acute
					numKeysToSend := 2
				}
				else if (accent = "grave")
				{
					keysToSend := "Ο" grave
					numKeysToSend := 2
				}
			}
			else if (breathing = "smooth")
			{
				if (accent = "")
				{
					keysToSend := "Ο" smooth
					numKeysToSend := 2
				}
				else if (accent = "acute")
				{
					keysToSend := "Ο" smooth acute
					numKeysToSend := 3
				}
				else if (accent = "grave")
				{
					keysToSend := "Ο" smooth grave
					numKeysToSend := 3
				}
			}
			else if (breathing = "rough")
			{
				if (accent = "")
				{
					keysToSend := "Ο" rough
					numKeysToSend := 2
				}
				else if (accent = "acute")
				{
					keysToSend := "Ο" rough acute
					numKeysToSend := 3
				}
				else if (accent = "grave")
				{
					keysToSend := "Ο" rough grave
					numKeysToSend := 3
				}
			}
		}
		
		else if (vowel = "u")
		{
			if (breathing = "")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "Υ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "Υ" macron
						numKeysToSend := 2
					}
					else if (quantity = "breve")
					{
						keysToSend := "Υ" breve
						numKeysToSend := 2
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "Υ" acute
						numKeysToSend := 2
					}
					else if (quantity = "macron")
					{
						keysToSend := "Υ" macron acute
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "Υ" breve acute
						numKeysToSend := 3
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "Υ" grave
						numKeysToSend := 2
					}
					else if (quantity = "macron")
					{
						keysToSend := "Υ" macron grave
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "Υ" breve grave
						numKeysToSend := 3
					}
				}
			}
			else if (breathing = "rough")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "Υ" rough
						numKeysToSend := 2
					}
					else if (quantity = "macron")
					{
						keysToSend := "Υ" macron rough
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "Υ" breve rough
						numKeysToSend := 3
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "Υ" rough acute
						numKeysToSend := 3
					}
					else if (quantity = "macron")
					{
						keysToSend := "Υ" macron rough acute
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "Υ" breve rough acute
						numKeysToSend := 4
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "Υ" rough grave
						numKeysToSend := 3
					}
					else if (quantity = "macron")
					{
						keysToSend := "Υ" macron rough grave
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "Υ" breve rough grave
						numKeysToSend := 4
					}
				}
				else if (accent = "circumflex")
				{
					keysToSend := "Υ" rough circumflex
					numKeysToSend := 3
				}
			}
			else if (breathing = "diaeresis")
			{
				keysToSend := "Υ" diaeresis
				numKeysToSend := 2
			}
		}
		
		else if (vowel = "w")
		{
			if (breathing = "")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "Ω"
					}
					else if (quantity = "iota")
					{
						keysToSend := "Ω" iotaSub
						numKeysToSend := 2
					}
				}
				else if (accent = "acute")
				{
					keysToSend := "Ω" acute
					numKeysToSend := 2
				}
				else if (accent = "grave")
				{
					keysToSend := "Ω" grave
					numKeysToSend := 2
				}
			}
			else if (breathing = "smooth")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
					keysToSend := "Ω" smooth
					numKeysToSend := 2
					}
					else if (quantity = "iota")
					{
						keysToSend := "Ω" smooth iotaSub
						numKeysToSend := 3
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "Ω" smooth acute
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "Ω" smooth acute iotaSub
						numKeysToSend := 4
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "Ω" smooth grave
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "Ω" smooth grave iotaSub
						numKeysToSend := 4
					}
				}
				else if (accent = "circumflex")
				{
					if (quantity = "")
					{
						keysToSend := "Ω" smooth circumflex
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "Ω" smooth circumflex iotaSub
						numKeysToSend := 4
					}
				}
			}
			else if (breathing = "rough")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "Ω" rough
						numKeysToSend := 2
					}
					else if (quantity = "iota")
					{
						keysToSend := "Ω" rough iotaSub
						numKeysToSend := 3
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "Ω" rough acute
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "Ω" rough acute iotaSub
						numKeysToSend := 4
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "Ω" rough grave
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "Ω" rough grave iotaSub
						numKeysToSend := 4
					}
				}
				else if (accent = "circumflex")
				{
					if (quantity = "")
					{
						keysToSend := "Ω" rough circumflex
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "Ω" rough circumflex iotaSub
						numKeysToSend := 4
					}
				}
			}
		}
		
		else if (vowel = "r")
		{
			if (breathing = "")
			{
				keysToSend := "Ρ"
			}
			else if (breathing = "rough")
			{
				keysToSend := "Ρ" rough
				numKeysToSend := 2
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
						keysToSend := "α"
					}
					else if (quantity = "iota")
					{
						keysToSend := "α" iotaSub
						numKeysToSend := 2
					}
					else if (quantity = "macron")
					{
						keysToSend := "α" macron
						numKeysToSend := 2
					}
					else if (quantity = "breve")
					{
						keysToSend := "α" breve
						numKeysToSend := 2
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "α" acute
						numKeysToSend := 2
					}
					else if (quantity = "iota")
					{
						keysToSend := "α" acute iotaSub
						numKeysToSend := 3
					}
					else if (quantity = "macron")
					{
						keysToSend := "α" macron acute
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "α" breve acute
						numKeysToSend := 3
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "α" grave
						numKeysToSend := 2
					}
					else if (quantity = "iota")
					{
						keysToSend := "α" grave iotaSub
						numKeysToSend := 3
					}
					else if (quantity = "macron")
					{
						keysToSend := "α" macron grave
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "α" breve grave
						numKeysToSend := 3
					}
				}
				else if (accent = "circumflex")
				{
					if (quantity = "")
					{
						keysToSend := "α" circumflex
						numKeysToSend := 2
					}
					else if (quantity = "iota")
					{
						keysToSend := "α" circumflex iotaSub
						numKeysToSend := 3
					}
				}
			}
			else if (breathing = "smooth")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "α" smooth
						numKeysToSend := 2
					}
					else if (quantity = "iota")
					{
						keysToSend := "α" smooth iotaSub
						numKeysToSend := 3
					}
					else if (quantity = "macron")
					{
						keysToSend := "α" macron smooth
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "α" breve smooth
						numKeysToSend := 3
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "α" smooth acute
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "α" smooth acute iotaSub
						numKeysToSend := 4
					}
					else if (quantity = "macron")
					{
						keysToSend := "α" macron smooth acute
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "α" breve smooth acute
						numKeysToSend := 4
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "α" smooth grave
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "α" smooth grave iotaSub
						numKeysToSend := 4
					}
					else if (quantity = "macron")
					{
						keysToSend := "α" macron smooth grave
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "α" breve smooth grave
						numKeysToSend := 4
					}
				}
				else if (accent = "circumflex")
				{
					if (quantity = "")
					{
						keysToSend := "α" smooth circumflex
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "α" smooth circumflex iotaSub
						numKeysToSend := 4
					}
				}
			}
			else if (breathing = "rough")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "α" rough
						numKeysToSend := 2
					}
					else if (quantity = "iota")
					{
						keysToSend := "α" rough iotaSub
						numKeysToSend := 3
					}
					else if (quantity = "macron")
					{
						keysToSend := "α" macron rough
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "α" breve rough
						numKeysToSend := 3
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "α" rough acute
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "α" rough acute iotaSub
						numKeysToSend := 4
					}
					else if (quantity = "macron")
					{
						keysToSend := "α" macron rough acute
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "α" breve rough acute
						numKeysToSend := 4
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "α" rough grave
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "α" rough grave iotaSub
						numKeysToSend := 4
					}
					else if (quantity = "macron")
					{
						keysToSend := "α" macron rough grave
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "α" breve rough grave
						numKeysToSend := 4
					}
				}
				else if (accent = "circumflex")
				{
					if (quantity = "")
					{
						keysToSend := "α" rough circumflex
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "α" rough circumflex iotaSub
						numKeysToSend := 4
					}
				}
			}
		}
			
		else if (vowel = "e")
		{
			if (breathing = "")
			{
				if (accent = "")
				{
					keysToSend := "ε"
				}
				else if (accent = "acute")
				{
					keysToSend := "ε" acute
					numKeysToSend := 2
				}
				else if (accent = "grave")
				{
					keysToSend := "ε" grave
					numKeysToSend := 2
				}
			}
			else if (breathing = "smooth")
			{
				if (accent = "")
				{
					keysToSend := "ε" smooth
					numKeysToSend := 2
				}
				else if (accent = "acute")
				{
					keysToSend := "ε" smooth acute
					numKeysToSend := 3
				}
				else if (accent = "grave")
				{
					keysToSend := "ε" smooth grave
					numKeysToSend := 3
				}
			}
			else if (breathing = "rough")
			{
				if (accent = "")
				{
					keysToSend := "ε" rough
					numKeysToSend := 2
				}
				else if (accent = "acute")
				{
					keysToSend := "ε" rough acute
					numKeysToSend := 3
				}
				else if (accent = "grave")
				{
					keysToSend := "ε" rough grave
					numKeysToSend := 3
				}
			}
		}
		
		else if (vowel = "h")
		{
			if (breathing = "")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "η"
					}
					else if (quantity = "iota")
					{
						keysToSend := "η" iotaSub
						numKeysToSend := 2
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "η" acute
						numKeysToSend := 2
					}
					else if (quantity = "iota")
					{
						keysToSend := "η" acute iotaSub
						numKeysToSend := 3
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "η" grave
						numKeysToSend := 2
					}
					else if (quantity = "iota")
					{
						keysToSend := "η" grave iotaSub
						numKeysToSend := 3
					}
				}
				else if (accent = "circumflex")
				{
					if (quantity = "")
					{
						keysToSend := "η" circumflex
						numKeysToSend := 2
					}
					else if (quantity = "iota")
					{
						keysToSend := "η" circumflex iotaSub
						numKeysToSend := 3
					}
				}
			}
			else if (breathing = "smooth")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "η" smooth
						numKeysToSend := 2
					}
					else if (quantity = "iota")
					{
						keysToSend := "η" smooth iotaSub
						numKeysToSend := 3
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "η" smooth acute
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "η" smooth acute iotaSub
						numKeysToSend := 4
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "η" smooth grave
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "η" smooth grave iotaSub
						numKeysToSend := 4
					}
				}
				else if (accent = "circumflex")
				{
					if (quantity = "")
					{
						keysToSend := "η" smooth circumflex
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "η" smooth circumflex iotaSub
						numKeysToSend := 4
					}
				}
			}
			else if (breathing = "rough")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "η" rough
						numKeysToSend := 2
					}
					else if (quantity = "iota")
					{
						keysToSend := "η" rough iotaSub
						numKeysToSend := 3
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "η" rough acute
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "η" rough acute iotaSub
						numKeysToSend := 4
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "η" rough grave
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "η" rough grave iotaSub
						numKeysToSend := 4
					}
				}
				else if (accent = "circumflex")
				{
					if (quantity = "")
					{
						keysToSend := "η" rough circumflex
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "η" rough circumflex iotaSub
						numKeysToSend := 4
					}
				}
			}
		}
		
		else if (vowel = "i")
		{
			if (breathing = "")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "ι"
					}
					else if (quantity = "macron")
					{
						keysToSend := "ι" macron
						numKeysToSend := 2
					}
					else if (quantity = "breve")
					{
						keysToSend := "ι" breve
						numKeysToSend := 2
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "ι" acute
						numKeysToSend := 2
					}
					else if (quantity = "macron")
					{
						keysToSend := "ι" macron acute
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "ι" breve acute
						numKeysToSend := 3
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "ι" grave
						numKeysToSend := 2
					}
					else if (quantity = "macron")
					{
						keysToSend := "ι" macron grave
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "ι" breve grave
						numKeysToSend := 3
					}
				}
				else if (accent = "circumflex")
				{
						keysToSend := "ι" circumflex
						numKeysToSend := 2
				}
			}
			else if (breathing = "smooth")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "ι" smooth
						numKeysToSend := 2
					}
					else if (quantity = "macron")
					{
						keysToSend := "ι" macron smooth
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "ι" breve smooth
						numKeysToSend := 3
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "ι" smooth acute
						numKeysToSend := 3
					}
					else if (quantity = "macron")
					{
						keysToSend := "ι" macron smooth acute
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "ι" breve smooth acute
						numKeysToSend := 4
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "ι" smooth grave
						numKeysToSend := 3
					}
					else if (quantity = "macron")
					{
						keysToSend := "ι" macron smooth grave
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "ι" breve smooth grave
						numKeysToSend := 4
					}
				}
				else if (accent = "circumflex")
				{
					keysToSend := "ι" smooth circumflex
					numKeysToSend := 3
				}
			}
			else if (breathing = "rough")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "ι" rough
						numKeysToSend := 2
					}
					else if (quantity = "macron")
					{
						keysToSend := "ι" macron rough
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "ι" breve rough
						numKeysToSend := 3
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "ι" rough acute
						numKeysToSend := 3
					}
					else if (quantity = "macron")
					{
						keysToSend := "ι" macron rough acute
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "ι" breve rough acute
						numKeysToSend := 4
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "ι" rough grave
						numKeysToSend := 3
					}
					else if (quantity = "macron")
					{
						keysToSend := "ι" macron rough grave
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "ι" breve rough grave
						numKeysToSend := 4
					}
				}
				else if (accent = "circumflex")
				{
					keysToSend := "ι" rough circumflex
					numKeysToSend := 3
				}
			}
			else if (breathing = "diaeresis")
			{
				if (accent = "")
				{
					keysToSend := "ι" diaeresis
					numKeysToSend := 2
				}
				else if (accent = "acute")
				{
					keysToSend := "ι" diaeresis acute
					numKeysToSend := 3
				}
				else if (accent = "grave")
				{
					keysToSend := "ι" diaeresis grave
					numKeysToSend := 3
				}
				else if (accent = "circumflex")
				{
					keysToSend := "ι" diaeresis circumflex
					numKeysToSend := 3
				}
			}
		}
			
		else if (vowel = "o")
		{
			if (breathing = "")
			{
				if (accent = "")
				{
					keysToSend := "ο"
				}
				else if (accent = "acute")
				{
					keysToSend := "ο" acute
					numKeysToSend := 2
				}
				else if (accent = "grave")
				{
					keysToSend := "ο" grave
					numKeysToSend := 2
				}
			}
			else if (breathing = "smooth")
			{
				if (accent = "")
				{
					keysToSend := "ο" smooth
					numKeysToSend := 2
				}
				else if (accent = "acute")
				{
					keysToSend := "ο" smooth acute
					numKeysToSend := 3
				}
				else if (accent = "grave")
				{
					keysToSend := "ο" smooth grave
					numKeysToSend := 3
				}
			}
			else if (breathing = "rough")
			{
				if (accent = "")
				{
					keysToSend := "ο" rough
					numKeysToSend := 2
				}
				else if (accent = "acute")
				{
					keysToSend := "ο" rough acute
					numKeysToSend := 3
				}
				else if (accent = "grave")
				{
					keysToSend := "ο" rough grave
					numKeysToSend := 3
				}
			}
		}
		
		else if (vowel = "u")
		{
			if (breathing = "")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "υ"
					}
					else if (quantity = "macron")
					{
						keysToSend := "υ" macron
						numKeysToSend := 2
					}
					else if (quantity = "breve")
					{
						keysToSend := "υ" breve
						numKeysToSend := 2
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "υ" acute
						numKeysToSend := 2
					}
					else if (quantity = "macron")
					{
						keysToSend := "υ" macron acute
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "υ" breve acute
						numKeysToSend := 3
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "υ" grave
						numKeysToSend := 2
					}
					else if (quantity = "macron")
					{
						keysToSend := "υ" macron grave
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "υ" breve grave
						numKeysToSend := 3
					}
				}
				else if (accent = "circumflex")
				{
					keysToSend := "υ" circumflex
					numKeysToSend := 2
				}
			}
			else if (breathing = "smooth")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "υ" smooth
						numKeysToSend := 2
					}
					else if (quantity = "macron")
					{
						keysToSend := "υ" macron smooth
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "υ" breve smooth
						numKeysToSend := 3
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "υ" smooth acute
						numKeysToSend := 3
					}
					else if (quantity = "macron")
					{
						keysToSend := "υ" macron smooth acute
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "υ" breve smooth acute
						numKeysToSend := 4
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "υ" smooth grave
						numKeysToSend := 3
					}
					else if (quantity = "macron")
					{
						keysToSend := "υ" macron smooth grave
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "υ" breve smooth grave
						numKeysToSend := 4
					}
				}
				else if (accent = "circumflex")
				{
					keysToSend := "υ" smooth circumflex
					numKeysToSend := 3
				}
			}
			else if (breathing = "rough")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "υ" rough
						numKeysToSend := 2
					}
					else if (quantity = "macron")
					{
						keysToSend := "υ" macron rough
						numKeysToSend := 3
					}
					else if (quantity = "breve")
					{
						keysToSend := "υ" breve rough
						numKeysToSend := 3
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "υ" rough acute
						numKeysToSend := 3
					}
					else if (quantity = "macron")
					{
						keysToSend := "υ" macron rough acute
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "υ" breve rough acute
						numKeysToSend := 4
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "υ" rough grave
						numKeysToSend := 3
					}
					else if (quantity = "macron")
					{
						keysToSend := "υ" macron rough grave
						numKeysToSend := 4
					}
					else if (quantity = "breve")
					{
						keysToSend := "υ" breve rough grave
						numKeysToSend := 4
					}
				}
				else if (accent = "circumflex")
				{
					keysToSend := "υ" rough circumflex
					numKeysToSend := 3
				}
			}
			else if (breathing = "diaeresis")
			{
				if (accent = "")
				{
					keysToSend := "υ" diaeresis
					numKeysToSend := 2
				}
				else if (accent = "acute")
				{
					keysToSend := "υ" diaeresis acute
					numKeysToSend := 3
				}
				else if (accent = "grave")
				{
					keysToSend := "υ" diaeresis grave
					numKeysToSend := 3
				}
				else if (accent = "circumflex")
				{
					keysToSend := "υ" diaeresis circumflex
					numKeysToSend := 3
				}
			}
		}
		
		else if (vowel = "w")
		{
			if (breathing = "")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "ω"
					}
					else if (quantity = "iota")
					{
						keysToSend := "ω" iotaSub
						numKeysToSend := 2
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "ω" acute
						numKeysToSend := 2
					}
					else if (quantity = "iota")
					{
						keysToSend := "ω" acute iotaSub
						numKeysToSend := 3
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "ω" grave
						numKeysToSend := 2
					}
					else if (quantity = "iota")
					{
						keysToSend := "ω" grave iotaSub
						numKeysToSend := 3
					}
				}
				else if (accent = "circumflex")
				{
					if (quantity = "")
					{
						keysToSend := "ω" circumflex
						numKeysToSend := 2
					}
					else if (quantity = "iota")
					{
						keysToSend := "ω" circumflex iotaSub
						numKeysToSend := 3
					}
				}
			}
			else if (breathing = "smooth")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "ω" smooth
						numKeysToSend := 2
					}
					else if (quantity = "iota")
					{
						keysToSend := "ω" smooth iotaSub
						numKeysToSend := 3
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "ω" smooth acute
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "ω" smooth acute iotaSub
						numKeysToSend := 4
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "ω" smooth grave
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "ω" smooth grave iotaSub
						numKeysToSend := 4
					}
				}
				else if (accent = "circumflex")
				{
					if (quantity = "")
					{
						keysToSend := "ω" smooth circumflex
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "ω" smooth circumflex iotaSub
						numKeysToSend := 4
					}
				}
			}
			else if (breathing = "rough")
			{
				if (accent = "")
				{
					if (quantity = "")
					{
						keysToSend := "ω" rough
						numKeysToSend := 2
					}
					else if (quantity = "iota")
					{
						keysToSend := "ω" rough iotaSub
						numKeysToSend := 3
					}
				}
				else if (accent = "acute")
				{
					if (quantity = "")
					{
						keysToSend := "ω" rough acute
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "ω" rough acute iotaSub
						numKeysToSend := 4
					}
				}
				else if (accent = "grave")
				{
					if (quantity = "")
					{
						keysToSend := "ω" rough grave
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "ω" rough grave iotaSub
						numKeysToSend := 4
					}
				}
				else if (accent = "circumflex")
				{
					if (quantity = "")
					{
						keysToSend := "ω" rough circumflex
						numKeysToSend := 3
					}
					else if (quantity = "iota")
					{
						keysToSend := "ω" rough circumflex iotaSub
						numKeysToSend := 4
					}
				}
			}
		}
		
		else if (vowel = "r")
		{
			if (breathing = "")
			{
				keysToSend := "ρ"
			}
			else if (breathing = "smooth")
			{
				keysToSend := "ρ" smooth
				numKeysToSend := 2
			}
			else if (breathing = "rough")
			{
				keysToSend := "ρ" rough
				numKeysToSend := 2
			}
		}
	}
	
	return [keysToSend, numKeysToSend]
}


resetDiacritics() 
{
	breathing := ""
	accent := ""
	quantity := ""
	return
}


resetVowel() 
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
		SendInput {Backspace %numKeysToBackspace%}
	}
		else
	{
		SendInput {Backspace}
	}
	return
}

HandleFinalSigma() {
	if(A_PriorHotkey = "*s")
	{
		SendInput {Backspace}ς
	}
	return
}