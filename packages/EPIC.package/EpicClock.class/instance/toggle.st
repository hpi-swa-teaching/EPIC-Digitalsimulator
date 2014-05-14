simulation
toggle
	self agent waitForSignalMaxMilliseconds: self delay.
	self value: self value not.
	self outputPorts first setValue: self value