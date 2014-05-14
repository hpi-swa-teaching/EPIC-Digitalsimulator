accessing
addInnerPort: aPort
	self addMorph: aPort.
	aPort eventHandler: self portHandler