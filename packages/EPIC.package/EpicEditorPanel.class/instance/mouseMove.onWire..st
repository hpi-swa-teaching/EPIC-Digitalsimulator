event handling
mouseMove: anEvent onWire: aWire
	| delta |
	aWire select.
	delta := self deltaInBounds: (anEvent endPoint - anEvent startPoint) For: aWire.
	aWire moveGrabbedAnchorBy: (delta)