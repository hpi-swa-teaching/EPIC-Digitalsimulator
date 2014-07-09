simulation
simulateWith: inputValues
	inputValues second ifTrue: [lastValue ifFalse: 
		[self outputPorts first setValue: inputValues first.]].
	self outputPorts second setValue: outputPorts first value not.
	lastValue := inputValues second.