bundling
updateOutgoingWireAnchors
	"TODO vielleicht besser ohne den offset kram"
	self sortWiresByEndPoints.
	self wires do: [ :eachWire |
		(eachWire anchorPoints detect: [ :anchPoint |
			anchPoint isBundleEnd]) point: (self endBundlePoint + (self endOffsetForNumber: (self endWires indexOf: eachWire) OutOf: (self wires size)))]