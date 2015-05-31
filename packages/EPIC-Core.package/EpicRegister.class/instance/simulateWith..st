accessing
simulateWith: inputValues
	self setState.
	self clockState: self inputValues fifth.
	self outputPorts first value: self state first.
	self outputPorts second value: self state second.
	self outputPorts third value: self state third.
	self outputPorts fourth value: self state fourth.