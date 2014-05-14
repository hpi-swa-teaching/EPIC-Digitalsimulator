geometry testing
distanceToPoint: aPoint
	^ aPoint dist: (
		aPoint 
			nearestPointOnLineFrom: self startPoint 
			to: self endPoint
	)
