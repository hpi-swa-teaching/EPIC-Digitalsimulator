accessing
removeComponent: aComponent
	aComponent removeActionsWithReceiver: self forEvent: #deleted.
	self removeMorph: aComponent.
	aComponent connectedWires do: [:eachWire | self removeWire: eachWire]