accessing
addWire: aWire
	self acceptsWire
		ifTrue: [self wires add: aWire]
		ifFalse: [self error: 'Port does not accept (more) wires.']