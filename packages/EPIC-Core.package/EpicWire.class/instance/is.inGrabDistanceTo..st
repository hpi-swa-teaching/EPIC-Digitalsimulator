dropping/grabbing
is: aPoint inGrabDistanceTo: aLine
	^ aLine 
		ifNil: [ false ]
		ifNotNil: [ (aLine distanceToPoint: aPoint) < self class grabDistance]