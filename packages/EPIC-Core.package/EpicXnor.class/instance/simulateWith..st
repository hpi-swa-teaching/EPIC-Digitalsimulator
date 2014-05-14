simulation
simulateWith: inputValues
	self outputPorts first setValue: (
		(inputValues first and: [inputValues second]) or: [inputValues first not and:[inputValues second not]])