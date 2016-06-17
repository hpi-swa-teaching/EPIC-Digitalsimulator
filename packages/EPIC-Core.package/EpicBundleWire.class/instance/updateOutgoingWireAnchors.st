bundling
updateOutgoingWireAnchors

	self wires do: [ :eachWire |
		(eachWire anchorPoints detect: [ :anchPoint |
			anchPoint isBundleEnd]) point: self endBundlePoint]