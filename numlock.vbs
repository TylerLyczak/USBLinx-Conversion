set WshShell = CreateObject("WScript.Shell")
LoopVariable = 1

Do Until LoopVariable = 0
	WshShell.SendKeys "{NUMLOCK}"
	WScript.Sleep 10000
Loop
