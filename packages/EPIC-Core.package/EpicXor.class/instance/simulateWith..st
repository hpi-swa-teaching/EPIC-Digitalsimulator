simulation
simulateWith: inputValues
	self outputPorts first setValue: (
		(inputValues first and: [inputValues second not]) or: [inputValues first not and:[inputValues second]])