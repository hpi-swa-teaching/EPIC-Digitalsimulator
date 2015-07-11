event handling
grab: anEvent wire: aWire

	aWire grabWireAtPoint: anEvent cursorPoint.
	self presumeAnchorMoveCommandFor: aWire