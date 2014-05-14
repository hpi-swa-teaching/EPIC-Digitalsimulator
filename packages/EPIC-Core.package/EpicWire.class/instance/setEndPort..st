accessing
setEndPort: aPort
	self endPort: aPort.
	aPort 
		addWire: self;
		when: #positionChanged send: #updateBounds to: self
