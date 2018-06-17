addDiacritic() {
	; TODO conditional based upon user pref for precomp or decomp
	Greek_precomposed()
}


Greek_precomposed() {

	thisDiacriticKey := A_TickCount
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
	
	return
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