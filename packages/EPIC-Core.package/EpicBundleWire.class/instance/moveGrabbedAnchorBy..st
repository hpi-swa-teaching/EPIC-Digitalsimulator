accessing
moveGrabbedAnchorBy: aDistance

	super moveGrabbedAnchorBy: aDistance.

	self updateBounds.
	
	self
		updateIncomingWireAnchors;
		updateOutgoingWireAnchors.
	
	self wires do: [ :eachWire |
		eachWire updateBounds]