instance creation
from: aPort to: aPoint
	^ self new
		setStartPort: aPort;
		setEndPoint:  aPoint;
		yourself