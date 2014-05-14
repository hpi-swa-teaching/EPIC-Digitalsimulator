bundling
emitChanges

	self startWires: (self wires sorted: [ :a :b|
		(a startPoint y) <= (b startPoint y) ]).
	self endWires: (self wires sorted: [ :a :b|
		(a endPoint y) <= (b endPoint y) ]).
	
	self wires do: [:each | each
		addBundleAnchorPoint: (self startBundlePoint + (self startOffsetForNumber: (self startWires indexOf: each) OutOf: (self wires size)))
			atIndex: 1;
		addBundleEndAnchorPoint: (self endBundlePoint + (self endOffsetForNumber: (self endWires indexOf: each) OutOf: (self wires size)))
			atIndex: ((each anchorPoints size)+1);
		addIncludingBundle: self;
		deselect;
		generateDrawAnchors;
		changed
	]