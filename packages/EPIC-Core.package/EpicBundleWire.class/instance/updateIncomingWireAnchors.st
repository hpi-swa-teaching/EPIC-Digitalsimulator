bundling
updateIncomingWireAnchors

	self wires do: [ :eachWire |
		(eachWire anchorPoints detect: [ :anchPoint |
			anchPoint isBundleAnchor]) point: self startBundlePoint]