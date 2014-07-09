initialization
initialize
	lastValue := false.
	super initialize.
	self outputPorts first setValue: false.
	self outputPorts second setValue: outputPorts first value not.