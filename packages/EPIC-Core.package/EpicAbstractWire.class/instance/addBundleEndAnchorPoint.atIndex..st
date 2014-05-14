accessing
addBundleEndAnchorPoint: aPoint atIndex: anIndex
	self addBundleAnchorPoint: aPoint atIndex: anIndex.
	(self anchorPoints at: anIndex) isBundleEnd: true