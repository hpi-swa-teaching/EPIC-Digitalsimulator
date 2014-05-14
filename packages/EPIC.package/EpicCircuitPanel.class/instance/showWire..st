visual accessing
showWire: aWire
	aWire eventHandler: self wireHandler.
	aWire when: #deleted send: #removeWire: to: self with: aWire.
	self addMorphNearBack: aWire