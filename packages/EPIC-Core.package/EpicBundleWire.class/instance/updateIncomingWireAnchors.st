bundling
updateIncomingWireAnchors
	"TODO vielleicht besser ohne den offset kram"
	self sortWiresByStartPoints.
	self wires do: [ :eachWire |
		(eachWire anchorPoints detect: [ :anchPoint |
			anchPoint isBundleAnchor]) point: (self startBundlePoint + (self startOffsetForNumber: (self startWires indexOf: eachWire) OutOf: (self wires size)))]