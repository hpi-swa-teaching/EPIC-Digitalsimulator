as yet unclassified
needsUpdate
	| elapsedTime now |
	now := DateAndTime millisecondClockValue.
	elapsedTime := now - self lastUpdate.
	self lastUpdate: now.
	^ (elapsedTime >= self interval)