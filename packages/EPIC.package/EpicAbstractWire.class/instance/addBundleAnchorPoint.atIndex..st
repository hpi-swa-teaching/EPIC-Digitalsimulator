accessing
addBundleAnchorPoint: aPoint atIndex: anIndex
	self anchorPoints add: (EpicBundleAnchor new initializeAt: aPoint) afterIndex: (anIndex-1).
	self generateDrawAnchors