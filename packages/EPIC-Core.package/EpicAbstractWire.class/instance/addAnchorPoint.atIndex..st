accessing
addAnchorPoint: aPoint atIndex: anIndex
	self anchorPoints add: (EpicAnchor new initializeAt: aPoint) afterIndex: (anIndex-1).
	self generateDrawAnchors