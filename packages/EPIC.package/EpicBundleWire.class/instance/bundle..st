bundling
bundle: someWires
	(someWires size > 0) ifTrue: [
		self wires: someWires;
		 	calculateStartAndEnd;
			emitChanges.
		self generateDrawAnchors
	]