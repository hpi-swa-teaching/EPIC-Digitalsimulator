dropping/grabbing
dropGrabbedAnchorWith: snapToGrid
	snapToGrid ifTrue: [self grabbedPoint snapToGrid].
	self generateDrawAnchors.
	self invalidRect: self bounds.
	self grabbedPointIndex: 0