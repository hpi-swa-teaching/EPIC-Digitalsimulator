simulation
simulateWireChangeOf: aWire into: aBoolean after: aDelay
	| simulationObject |
	simulationObject := EpicWireEvent 
		of: aWire into: aBoolean when: (self timeStampAfter: aDelay).
		
	self queueMutex critical: 
		[self simulationQueue add: simulationObject].
	
	self agent wakeUp