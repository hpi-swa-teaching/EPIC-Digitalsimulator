simulation
simulateWith: inputValues

	self outputPorts first setValue:
		(inputValues at: (self toInteger: self selectorPorts))