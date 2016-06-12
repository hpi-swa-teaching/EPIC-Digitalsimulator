drawing
simulateWith: inputValues
	self tunnelOpening ifNotNil: [
	self outputPorts first setValue: self tunnelOpening inputPorts first value]