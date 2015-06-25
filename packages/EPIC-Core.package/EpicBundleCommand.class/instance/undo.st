accessing
undo

	self bundledWire delete.
	self wires do: [ :eachWire |
		eachWire 
			anchorPoints: (self anchorPoints at: eachWire);
			generateDrawAnchors]