initialization
privateAddPort: aPort
	aPort component: self.
	self 
		when: #positionChanged send: #triggerChangeOfPosition to: aPort;
		addMorph: aPort.