bundling
bundle: someWires
	someWires ifNotEmpty: [
		self 
			wires: someWires;
		 	calculateStartAndEnd;
			emitChanges;
			generateDrawAnchors]