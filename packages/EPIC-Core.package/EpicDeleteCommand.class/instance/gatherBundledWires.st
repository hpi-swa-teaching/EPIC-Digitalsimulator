as yet unclassified
gatherBundledWires

	self bundles: (self wires select: [ :eachWire | 
		eachWire isBundle]).
	self wires: (self wires select: [ :eachwire |
		eachwire isBundle not])