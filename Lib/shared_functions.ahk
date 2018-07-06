layerIndependent(key) {
	if(shiftDownNoUp)
	{
		SendInput +{%key%}
		return
	}
	else
	{
		dual.comboKey(key)
		return
	}
}

layerIndependentBackspace(charset) {
	if(shiftDownNoUp)
	{
		SendInput +{Backspace}
		return
	}
	else
	{
		%charset%_deleteLastFullCharacter()
		return
	}
}


Latin_addDiacritic() {

	if(Latin_vowel = "")
	{
		return
	}

	thisKeySequence := A_TickCount
	
	if(Latin_quantity = "")
	{
		keyInfo := Latin_handleAccents("", 0)
	}
	else if(Latin_quantity = "macron")
	{
		keyInfo := Latin_handleAccents(Latin_macron, 1)	
	}
	else if(Latin_quantity = "breve")
	{
		keyInfo := Latin_handleAccents(Latin_breve, 1)
	}
	
	keysToSend := Latin_vowel keyInfo[1]
	numKeysToSend := keyInfo[2]
	
	Latin_deleteLastFullCharacter()
	SendInput % keysToSend
	lastKeySequence := thisKeySequence
	; Add one more key because of the concatenated vowel
	numKeysToBackspace := numKeysToSend + 1
}
	
	
Latin_handleAccents(keysToSend, numKeysToSend) {

	; Don't need to do anything if Latin_accent = ""
	
	if(Latin_accent = "acute")
	{
		keysToSend := keysToSend Latin_acute
		numKeysToSend := numKeysToSend + 1
	}
	else if(Latin_accent = "grave")
	{
		keysToSend := keysToSend Latin_grave
		numKeysToSend := numKeysToSend + 1	
	}
	else if(Latin_accent = "circumflex")
	{
		keysToSend := keysToSend Latin_circumflex
		numKeysToSend := numKeysToSend + 1	
	}
	else if(Latin_accent = "diaeresis")
	{
		keysToSend := keysToSend Latin_diaeresis
		numKeysToSend := numKeysToSend + 1	
	}
	
	return [keysToSend, numKeysToSend]
}


Latin_resetDiacritics() {
	Latin_accent := ""
	Latin_quantity := ""
	return
}


Latin_resetVowel() {
	Latin_vowel := ""
	Latin_accent := ""
	Latin_quantity := ""
	return
}


isLayerKey(lastKey) {
	return ((lastKey = "LShift") or (lastKey = "RShift") or (lastKey = "CapsLock"))
}


Latin_deleteLastFullCharacter() {

	timeOfLastHotkey := A_TickCount - A_TimeSincePriorHotkey
	
	lastKey := Dual.cleanKey(A_PriorHotkey)
	keysInterfering := (lastKey = "LShift") or (lastKey = "RShift") or (lastKey = "CapsLock")
	
	lastKeyDiacritic := false
	
	; Respectively: acute, diaeresis, macron, breve, grave, circumflex
	keysWithDiacritics := ["/", ";", "[", "]", "\", "="]
	for k, v in keysWithDiacritics
	{
		if(v == lastRealKeyDown)
		{
			lastKeyDiacritic := true
			break
		}
	}
	
	if(((timeOfLastHotKey - lastKeySequence) < 50) or (keysInterfering and lastKeyDiacritic))
	{
		SendInput {Backspace %numKeysToBackspace%}
	}
		else
	{
		SendInput {Backspace}
	}
	return
}