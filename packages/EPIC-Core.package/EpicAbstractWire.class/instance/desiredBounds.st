geometry
desiredBounds
	^ (Rectangle encompassing: self allDrawAnchorPoints)
		expandBy: self boundsInset