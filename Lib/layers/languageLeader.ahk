; Set up diacritic and special character aliases
;-------------------------------------------------

; Declarations							; Unicode descriptions
;---------------------------------------;-------------------

global Latin_acute := "{U+0301}" 		; Combining Acute Accent
global Latin_grave := "{U+0300}" 		; Combining Grave Accent
global Latin_circumflex := "{U+0302}" 	; Combining Circumflex Accent
global Latin_diaeresis := "{U+0308}" 	; Combining Diaeresis
global Latin_macron := "{U+0304}" 		; Combining Macron
global Latin_breve := "{U+0306}" 		; Combining Breve

global French_cedilla := "{U+00E7}"		; LATIN SMALL LETTER C WITH CEDILLA
global French_cedilla_cap := "{U+00C7}"		; LATIN CAPITAL LETTER C WITH CEDILLA
global French_oe := "{U+0153}"			; LATIN SMALL LIGATURE OE
global French_ae := "{U+00E6}"			; LATIN SMALL LETTER AE
global French_oe_cap := "{U+0152}"			; LATIN CAPITAL LIGATURE OE
global French_ae_cap := "{U+00C6}"			; LATIN CAPITAL LETTER AE

global Spanish_enye := "{U+00F1}"		; latin small letter n with tilde
global Spanish_enye_cap := "{U+00D1}"		; latin capital letter n with tilde
global Spanish_invertedQuestion := "{U+00BF}"		; INVERTED QUESTION MARK
global Spanish_invertedExclamation := "{U+00A1}"	; INVERTED EXCLAMATION MARK

global German_eszett := "{U+00DF}"		; LATIN SMALL LETTER SHARP S
global German_eszett_cap := "{U+1E9E}"		; LATIN CAPITAL LETTER SHARP S


; Set up variables
;-------------------------------------------------

; Variable declarations	 			; Possible options
;-----------------------------------;-----------------------
global Latin_vowel := ""			; "" a e i o u
global Latin_accent := ""			; "" acute grave circumflex diaresis
global Latin_quantity := ""			; "" macron breve



; Create remapping layer
;-------------------------------------------------

languageLeader_Esc()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_F1()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_F2()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_F3()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_F4()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_F5()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_F6()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_F7()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_F8()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_F9()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_F10()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_F11()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_F12()
{
	SendInput {%languageLeaderUp%}
	return
}


languageLeader_backtick()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_1()
{
	if(activeLanguage = "English")
	{
		if(shiftDownNoUp)
		{
			SendInput %Spanish_invertedExclamation%
		}
	}
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_2()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_3()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_4()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_5()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_6()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_7()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_8()
{
	if(activeLanguage != "English")
	{
		if(shiftDownNoUp)
		{
			SendInput {*}
		}
	}
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_9()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_0()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_hyphen()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_equals()
{
	if(activeLanguage = "English")
	{
		if(!shiftDownNoUp)
		{
			if (Latin_accent = "circumflex")
			{
				Latin_accent := ""
			}
			else
			{
				Latin_accent := "circumflex"
			}
			Latin_addDiacritic()
		}
	}
	else
	{
		if(!shiftDownNoUp)
		{
			SendInput {=}
		}
	}
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_Backspace()
{
	SendInput {%languageLeaderUp%}
	return
}


languageLeader_Tab()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_q()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_w()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_e()
{
	activeLanguage := "English"
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_r()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_t()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_y()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_u()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_i()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_o()
{
	if(activeLanguage = "English")
	{
		if(shiftDownNoUp)
		{
			SendInput %French_oe_cap%
		}
		else
		{
			SendInput %French_oe%
		}
	}
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_p()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_openBracket()
{
	if(activeLanguage = "English")
	{
		if(shiftDownNoUp)
		{
			if (Latin_quantity = "macron")
			{
				Latin_quantity := ""
			}
			else
			{
				Latin_quantity := "macron"
			}
			Latin_addDiacritic()
		}
	}
	else
	{
		if(shiftDownNoUp)
		{
			SendInput {{}
		}
		else
		{
			SendInput {[}
		}
	}
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_closeBracket()
{
	if(activeLanguage = "English")
	{
		if(shiftDownNoUp)
		{
			if (Latin_quantity = "breve")
			{
				Latin_quantity := ""
			}
			else
			{
				Latin_quantity := "breve"
			}
			Latin_addDiacritic()
		}
	}
	else
	{
		if(shiftDownNoUp)
		{
			SendInput {}}
		}
		else
		{
			SendInput {]}
		}
	}
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_backslash()
{
	if(activeLanguage = "English")
	{
		if(!shiftDownNoUp)
		{
			if (Latin_accent = "grave")
			{
				Latin_accent := ""
			}
			else
			{
				Latin_accent := "grave"
			}
			Latin_addDiacritic()
		}
	}
	else
	{
		if(shiftDownNoUp)
		{
			SendInput {|}
		}
		else
		{
			SendInput {\}
		}
	}
	SendInput {%languageLeaderUp%}
	return
}


languageLeader_CapsLock()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_a()
{
	if(activeLanguage = "English")
	{
		if(shiftDownNoUp)
		{
			SendInput %French_ae_cap%
		}
		else
		{
			SendInput %French_ae%
		}
	}
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_s()
{
	if(activeLanguage = "English")
	{
		if(shiftDownNoUp)
		{
			SendInput %German_eszett_cap%
		}
		else
		{
			SendInput %German_eszett%
		}
	}
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_d()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_f()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_g()
{
	activeLanguage := "Greek"
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_h()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_j()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_k()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_l()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_semicolon()
{
	if(activeLanguage = "English")
	{
		if(shiftDownNoUp)
		{
			if (Latin_accent = "diaeresis")
			{
				Latin_accent := ""
			}
			else
			{
				Latin_accent := "diaeresis"
			}
			Latin_addDiacritic()
		}
	}
	else
	{
		if(shiftDownNoUp)
		{
			SendInput {:}
		}
		else
		{
			SendInput {;}
		}
	}
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_apostrophe()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_Enter()
{
	SendInput {%languageLeaderUp%}
	return
}


languageLeader_z()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_x()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_c()
{
	if(activeLanguage = "English")
	{
		if(shiftDownNoUp)
		{
			SendInput %French_cedilla_cap%
		}
		else
		{
			SendInput %French_cedilla%
		}
	}
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_v()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_b()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_n()
{
	if(activeLanguage = "English")
	{
		if(shiftDownNoUp)
		{
			SendInput %Spanish_enye_cap%
		}
		else
		{
			SendInput %Spanish_enye%
		}
	}
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_m()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_comma()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_period()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_slash()
{
	if(activeLanguage = "English")
	{
		if(shiftDownNoUp)
		{
			SendInput %Spanish_invertedQuestion%
		}
		else
		{
			if (Latin_accent = "acute")
			{
				Latin_accent := ""
			}
			else
			{
				Latin_accent := "acute"
			}
			Latin_addDiacritic()
		}
	}
	else
	{
		if(shiftDownNoUp)
		{
			SendInput {?}
		}
		else
		{
			SendInput {/}
		}
	}
	SendInput {%languageLeaderUp%}
	return
}


languageLeader_Space()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_AppsKey()
{
	SendInput {%languageLeaderUp%}
	return
}


languageLeader_Left()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_Down()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_Up()
{
	SendInput {%languageLeaderUp%}
	return
}
languageLeader_Right()
{
	SendInput {%languageLeaderUp%}
	return
}