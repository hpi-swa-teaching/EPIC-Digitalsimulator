accessing
addBundleStartAnchorPoint: aPoint atIndex: anIndex
	self addBundleAnchorPoint: aPoint atIndex: anIndex.
	(self anchorPoints at: anIndex) isBundleStart: true