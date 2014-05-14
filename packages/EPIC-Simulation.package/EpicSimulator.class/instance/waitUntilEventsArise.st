waiting
waitUntilEventsArise
	self agent 
		while: [self eventsAreWaiting not] 
		run: [self waitUnbounded]