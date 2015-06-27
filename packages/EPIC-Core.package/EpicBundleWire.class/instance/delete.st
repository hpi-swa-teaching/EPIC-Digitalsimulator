drawing
delete

	self wires do: [:eachWire |
		eachWire resetAnchorPoints.
		eachWire generateDrawAnchors.
		eachWire updateBounds.
		eachWire includingBundles remove: self].
	super delete