circuit stacking
eventuallyExitCurrentCircuit
	self circuits size > 1
		ifTrue: [self exitCurrentCircuit]