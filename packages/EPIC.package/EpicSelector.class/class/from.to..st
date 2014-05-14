instance creation
from: startPoint to: endPoint
	^ self new
		startPoint: startPoint;
		position: startPoint;
		extent: endPoint - startPoint