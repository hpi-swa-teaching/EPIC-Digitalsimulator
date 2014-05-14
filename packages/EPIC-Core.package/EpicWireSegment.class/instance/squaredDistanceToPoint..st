geometry testing
squaredDistanceToPoint: aPoint
	^ aPoint squaredDistanceTo: (
		aPoint 
			nearestPointOnLineFrom: self startPoint 
			to: self endPoint
	)
