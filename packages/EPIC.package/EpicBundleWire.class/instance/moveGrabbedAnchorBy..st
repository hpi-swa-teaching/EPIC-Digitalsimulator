accessing
moveGrabbedAnchorBy: aDistance
	super moveGrabbedAnchorBy: aDistance.
	self updateBounds.
	
	self startWires: (self wires sorted: [ :a :b|
		(a startPoint y) <= (b startPoint y) ]).
	self endWires: (self wires sorted: [ :a :b|
		(a endPoint y) <= (b endPoint y) ]).
	
	self wires do: [ :each|
		(each anchorPoints detect: [:anchPoint |
			anchPoint isBundleAnchor.
		])point: (self startBundlePoint + (self startOffsetForNumber: (self startWires indexOf: each) OutOf: (self wires size))).
		(each anchorPoints detect: [:anchPoint |
			anchPoint isBundleEnd.
		])point: (self endBundlePoint + (self endOffsetForNumber: (self endWires indexOf: each) OutOf: (self wires size))).
		each updateBounds.
	].