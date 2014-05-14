geometry testing
containsPoint: aPoint
	^ self wireSegments anySatisfy: [:eachSegment | 
		(eachSegment distanceToPoint: aPoint) < self class grabDistance
	]