as yet unclassified
simulateWith: inputValues
	self setState.
	self outputPorts first setValue: self state.
	self outputPorts second setValue: self state not