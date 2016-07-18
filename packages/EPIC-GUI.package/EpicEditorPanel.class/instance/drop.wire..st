event handling
drop: anEvent wire: aWire

	aWire dropGrabbedAnchorWith: self snapToGrid.
	self commandExecutor executePresumedCommand