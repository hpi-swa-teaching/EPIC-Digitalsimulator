dropping/grabbing
anchorInRange: aPoint
	(self allDrawAnchorPoints detectMin: [ :eachPoint | 
		aPoint squaredDistanceTo: eachPoint 
	]) ifNotNilDo: [ :anchorPoint |
		(anchorPoint dist: aPoint) < (self class grabDistance)
			ifTrue: [^ self getAnchorByPoint: anchorPoint]
	].
	^ nil