accessing
grabbedPoint
	^ (self anchorIsValid: self grabbedPointIndex)
		ifTrue: [ self anchorPoints at: self grabbedPointIndex ]
		ifFalse: [ nil ]