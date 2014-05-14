visual accessing
removeWire: aWire
	aWire removeActionsWithReceiver: self forEvent: #deleted. 
	self removeMorph: aWire