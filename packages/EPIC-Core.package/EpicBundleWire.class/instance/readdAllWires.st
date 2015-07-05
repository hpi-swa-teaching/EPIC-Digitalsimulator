bundling
readdAllWires

	self wires do: [ :eachWire |
		eachWire addToBundle: self].
	self
		updateIncomingWireAnchors;
		updateOutgoingWireAnchors.