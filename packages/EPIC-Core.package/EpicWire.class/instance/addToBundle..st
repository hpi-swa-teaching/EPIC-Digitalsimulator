as yet unclassified
addToBundle: aBundleWire

	self addBundleStartAnchorPoint: (0 @ 0) atIndex: 1.
	self addBundleEndAnchorPoint: (0 @ 0) atIndex: (self anchorPoints size) + 1.
	self 
		addIncludingBundle: aBundleWire;
		deselect;
		generateDrawAnchors;
		changed.
	