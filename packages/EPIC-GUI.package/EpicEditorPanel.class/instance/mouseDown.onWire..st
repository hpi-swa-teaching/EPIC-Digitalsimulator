event handling
mouseDown: anEvent onWire: aWire
	self mouseDown: anEvent onObject: aWire.
	anEvent yellowButtonPressed
		ifTrue:  [ self openWireOptionMenu ].
	
	self presumeAnchorMoveCommandFor: aWire