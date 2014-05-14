geometry
updateBounds
	| newBounds |
	self generateDrawAnchors.
	newBounds := self desiredBounds.
	self 
		adaptAnchorPointsTo: newBounds;
		bounds: newBounds;
		changed