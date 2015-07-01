simulation
toggle

	(self inputValues first ~= self value) ifTrue: [ (Delay forMilliseconds:self millisecondsToWait ) wait].
	self value: self inputValues first.
	self outputPorts first setValue: self value