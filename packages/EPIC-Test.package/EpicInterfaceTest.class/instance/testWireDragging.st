wire testing
testWireDragging
	| wire position anchorCount |
	self testWireCreation.
	wire := self editorPanel wires first.
	position := wire wireSegments first center.
	anchorCount := wire anchorPoints size.
	self currentHand position: position.
	self editorPanel
		mouseDown: (self blueButtonEvent: #mouseDown for: self currentHand) onWire: wire;
		grab: (self dragEventFor: self currentHand) 
		wire: wire.
	self editorPanel
		mouseMove: (self moveEventFor: self currentHand to: position + (100@100))
		onWire: wire.
	self editorPanel 
		drop: (self dropEventFor: self currentHand)
		wire: wire.
	self assert: [ wire anchorPoints size > anchorCount ]