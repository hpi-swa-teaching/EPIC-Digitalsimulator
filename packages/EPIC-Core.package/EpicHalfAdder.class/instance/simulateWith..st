simulation
simulateWith: inputValues 
	self outputPorts first setValue:
		(inputValues first xor: inputValues second).

	self outputPorts second setValue:
		(inputValues first and: [inputValues second]).