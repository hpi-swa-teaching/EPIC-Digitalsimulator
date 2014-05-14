instance creation
from: aPoint to: anotherPoint
	^ self new 
		startPoint: aPoint;
		endPoint: anotherPoint;
		yourself