event handling
mouseDown: anEvent onWire: aWire

	self mouseDown: anEvent onObject: aWire.
	anEvent yellowButtonPressed ifTrue: [ EpicOptionMenu new on: self with: aWire ].
	self presumeAnchorMoveCommandFor: aWire