event handling
startDrag: anEvent onPort: aPort
	aPort acceptsWire ifTrue: [
		self 
			setWireStub: (EpicWireStub from: aPort to: anEvent hand position);
			registerForMouseMove
	]