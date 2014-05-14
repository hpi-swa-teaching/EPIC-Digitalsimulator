simulation
simulatePortChangeOf: aPort into: aBoolean after: aDelay
	| newEvent |
	newEvent := EpicPortEvent 
		of: aPort into: aBoolean when: (self timeStampAfter: aDelay).
		
	self queueMutex critical: 
		[(self detectOrCreatePortGroupEventFor: newEvent) add: newEvent].
	
	self agent wakeUp