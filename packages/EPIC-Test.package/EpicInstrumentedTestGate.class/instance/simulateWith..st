simulation
simulateWith: inputValues
	self shouldSimulate 
		ifTrue: [self outputPorts first setValue: (inputValues first) not.	
				self simulationCycles: self simulationCycles + 1]
		ifFalse: [self triggerEvent: #cycleLimitReached]