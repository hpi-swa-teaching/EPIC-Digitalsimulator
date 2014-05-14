simulation
simulateWith: inputValues
	self outputPorts first setValue:
		(inputValues first or: [inputValues second]) not