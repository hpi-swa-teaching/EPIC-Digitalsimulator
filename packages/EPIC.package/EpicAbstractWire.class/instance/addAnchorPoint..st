accessing
addAnchorPoint: aPoint
	self anchorPoints add: (EpicAnchor new initializeAt: aPoint).
	self generateDrawAnchors