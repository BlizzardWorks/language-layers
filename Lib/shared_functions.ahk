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
	if((timeOfLastHotKey - lastKeySequence) < 50)
	{
		SendInput {Backspace %numKeysToBackspace%}
	}
		else
	{
		SendInput {Backspace}
	}
	return
}