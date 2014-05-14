drawing
reorderExistingWiresFor: newWiresSize
	
	self wires do: [ :each|
		(each anchorPoints detect: [ :detected|
			detected isBundleAnchor])
				point: (self startBundlePoint + (self startOffsetForNumber: (self startWires indexOf: each) OutOf: (newWiresSize))).
		(each anchorPoints detect: [ :detected|
			detected isBundleEnd])
				point: (self endBundlePoint + (self endOffsetForNumber: (self endWires indexOf: each) OutOf: (newWiresSize))).
		each
			generateDrawAnchors;
			changed.
	].