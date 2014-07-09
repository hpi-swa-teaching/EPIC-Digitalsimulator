accessing
allAnchorPoints
	^ self anchorPoints copy
		addFirst: self startPoint;
		addLast: self endPoint;
		yourself