event handling
mouseUpOnBackground: anEvent
	self tryToConnectWireStub: anEvent.
	self selector ifNotNil: [
		self selectComponentsUsing: self selector.
		self selector delete.
		self selector: nil
	]