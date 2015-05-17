as yet unclassified
simulateWith: inputValues
	self outputPorts first setValue:
		(inputValues at: (self toInteger: (self toBooleanCollection: self selectorPorts)))