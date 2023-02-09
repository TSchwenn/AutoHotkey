tabNumber = 16
msDelay = 100
BreakLoop = 0

Esc::
BreakLoop = 1
return

#n::
click	
Loop %tabNumber% {
	if (BreakLoop = 1) {
  		BreakLoop = 0
		break
	}	
	click
	Send ^{Tab}
	sleep %msDelay%
}
return            	                                                          