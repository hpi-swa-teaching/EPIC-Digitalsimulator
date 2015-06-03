simulation
simulateWith: inputValues 
	self outputPorts first setValue:
		(self inputValues first xor: self inputValues second).

	self outputPorts second setValue:
		(inputValues first and: [inputValues second]).