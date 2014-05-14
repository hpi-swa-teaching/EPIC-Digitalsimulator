drawing
orderNewWires: aWireList for: newWiresSize
	
	aWireList do: [:each | each
		addBundleAnchorPoint: (self startBundlePoint + (self startOffsetForNumber: (self startWires indexOf: each) OutOf: (newWiresSize)))
			atIndex: 1;
		addBundleEndAnchorPoint: (self endBundlePoint + (self endOffsetForNumber: (self endWires indexOf: each) OutOf: (newWiresSize)))
			atIndex: ((each anchorPoints size)+1);
		addIncludingBundle: self;
		deselect;
		generateDrawAnchors;
		changed.
	].