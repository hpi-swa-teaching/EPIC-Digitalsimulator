direction
direction
	| distance |
	distance := self startPoint - self endPoint.
	^ ((distance x = 0) = (distance y = 0))
		ifTrue: [nil]
		ifFalse: [(distance x = 0)
			ifTrue: [#vertical]
			ifFalse: [#horizontal]
		]