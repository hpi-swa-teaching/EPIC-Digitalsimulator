dropping/grabbing
grabWireAtPoint: aPoint
	(self anchorInRange: aPoint) 
		ifNotNilDo: [ :anAnchor |
			self grabbedPointIndex: (self anchorPoints indexOf: anAnchor)
		] ifNil: [
			(self wireSegmentInRange: aPoint) ifNotNilDo: [ :wireSegment |
				self insert: aPoint into: wireSegment.
				self grabbedPointIndex: (self anchorPoints indexOf: (self getAnchorByPoint: aPoint))
			]
		]