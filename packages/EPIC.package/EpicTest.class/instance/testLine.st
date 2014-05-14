component testing
testLine
	| line |
	line := EpicWireSegment from: 0@0 to: 2@0.
	self assert: [
		(line startPoint = (0@0) and: [line endPoint = (2@0) ])
		or: [line startPoint = (2@0) and: [line endPoint = (0@0) ]] ].
	self assert: [(line distanceToPoint: 1@1) = 1].
	self assert: [(line squaredDistanceToPoint: 1@1) = 1].
	self assert: [(line distanceToPoint: 2@2) = 2].
	self assert: [(line squaredDistanceToPoint: 2@2) = 4].