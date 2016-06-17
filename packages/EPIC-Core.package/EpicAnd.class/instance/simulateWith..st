simulation
simulateWith: inputValues
	self outputPorts first setValue:
		(inputValues first and: [inputValues second])