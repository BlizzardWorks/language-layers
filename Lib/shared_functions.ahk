getShiftState() {
  return (GetKeyState("RShift") or GetKeyState("LShift"))
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