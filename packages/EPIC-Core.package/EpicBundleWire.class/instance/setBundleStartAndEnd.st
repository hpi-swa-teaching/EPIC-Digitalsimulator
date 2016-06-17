initialization
setBundleStartAndEnd

	self anchorPoints removeAll.
	self 
		addAnchorPoint: self calculateStartPoint;
		addAnchorPoint: self calculateEndPoint;
		updateBounds