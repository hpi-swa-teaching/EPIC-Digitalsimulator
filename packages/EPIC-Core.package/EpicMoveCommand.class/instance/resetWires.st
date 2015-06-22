command handling
resetWires

	self wires do:[ :eachWire |
		eachWire anchorPoints: (self wireStartAnchors at: eachWire) ]