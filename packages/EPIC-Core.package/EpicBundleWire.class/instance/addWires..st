as yet unclassified
addWires: aWireList

	aWireList do: [ :eachWire | eachWire addToBundle: self].
	self wires addAll: aWireList.
	
	self
		calculateStartAndEnd;
		updateIncomingWireAnchors;
		updateOutgoingWireAnchors.

	self wires do: [ :eachWire |
		eachWire updateBounds].
	
	self deselect