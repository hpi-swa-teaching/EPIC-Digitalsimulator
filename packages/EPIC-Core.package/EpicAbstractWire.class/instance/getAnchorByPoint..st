accessing
getAnchorByPoint: aPoint
	^(self anchorPoints detect: [ :eachAnchor |
		eachAnchor point = aPoint]
	ifNone: [ ^nil.])