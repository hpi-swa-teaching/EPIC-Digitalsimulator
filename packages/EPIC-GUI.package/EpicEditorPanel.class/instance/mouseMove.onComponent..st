event handling
mouseMove: anEvent onComponent: aComponent
	| delta |
	delta := self deltaInBounds: (anEvent endPoint - anEvent startPoint).

	self selectedObjects do: [:eachObject | 
		eachObject position: eachObject position + delta].
	self selectedWires do: [:eachWire | eachWire updateBounds].
	self commandExecutor verifyPresumedCommand
