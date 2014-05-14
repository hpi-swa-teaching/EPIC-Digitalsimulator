accessing
addArc: aBoundRectangle clippedBy: aClippingRectangle
	| poly newVertices|
	poly := EpicPolygon new.
	poly addArc: aBoundRectangle.
	self vertices ifNotEmpty: [poly rotateUntilFirstIsNearestTo: self vertices last].	
	newVertices := poly vertices select: 
		[:eachPoint | aClippingRectangle containsPoint: eachPoint ].
	self addPoints: newVertices