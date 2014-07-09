dropping/grabbing
anchorPointInRange: aPoint
	(self anchorPoints detectMin: [ :eachPoint | 
		aPoint squaredDistanceTo: eachPoint 
	]) ifNotNilDo: [ :anchorPoint |
		(anchorPoint dist: aPoint) < (self class grabDistance)
			ifTrue: [^ anchorPoint]
	].
	^ nil