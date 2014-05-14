wire segments
wireSegmentInRange: aPoint
	(self wireSegments detectMin: [ :eachSegment | 
		eachSegment squaredDistanceToPoint: aPoint 
	]) ifNotNilDo: [:theWireSegment |
		(self is: aPoint inGrabDistanceTo: theWireSegment)
			ifTrue: [ ^ theWireSegment ]
	].
	^ nil