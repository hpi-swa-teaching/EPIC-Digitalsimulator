bundling
addWires: aWireList

	aWireList do: [ :eachWire | eachWire addToBundle: self].
	self wires addAll: aWireList.
	self
		setBundleStartAndEnd;
		updateIncomingWireAnchors;
		updateOutgoingWireAnchors.
	self wires do: [ :eachWire |
		eachWire updateBounds].
	self deselect