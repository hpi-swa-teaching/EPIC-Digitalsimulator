accessing
setStartPort: aPort
	super setStartPort: aPort.
	aPort 
		addWire: self;
		when: #valueChanged send: #propagateValue to: self;
		when: #positionChanged send: #updateBounds to: self
	