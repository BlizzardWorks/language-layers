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

layerIndependentBackspace() {
	if(shiftDownNoUp)
	{
		SendInput +{Backspace}
		return
	}
	else
	{
		deleteLastFullCharacter()
		return
	}
}


deleteLastFullCharacter()
{
	timeOfLastHotkey := A_TickCount - A_TimeSincePriorHotkey
	
	lastKey := Dual.cleanKey(A_PriorHotkey)
	shiftInterfering := (lastKey = "LShift") or (lastKey = "RShift")
	
	lastKeyDiacritic := false
	
	; Respectively: acute, diaeresis, rough, smooth, grave, underdot, circumflex
	keysWithDiacritics := ["/", ";", "[", "]", "\", "8", "="]
	for k, v in keysWithDiacritics
	{
		if(v == lastRealKeyDown)
		{
			lastKeyDiacritic := true
			break
		}
	}
	
	if(((timeOfLastHotKey - lastKeySequence) < 50) or (shiftInterfering and lastKeyDiacritic))
	{
		SendInput {Backspace %numKeysToBackspace%}
	}
		else
	{
		SendInput {Backspace}
	}
	return
}