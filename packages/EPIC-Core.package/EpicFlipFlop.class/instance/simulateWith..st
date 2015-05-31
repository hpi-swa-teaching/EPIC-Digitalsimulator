as yet unclassified
simulateWith: inputValues
	self setState.
	self clockState: inputValues second.
	self outputPorts first setValue: self state.
	self outputPorts second setValue: self state not