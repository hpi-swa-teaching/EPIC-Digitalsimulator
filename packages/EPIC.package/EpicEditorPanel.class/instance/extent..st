geometry
extent: aPoint
	super extent: aPoint.
	self grid ifNotNil: [ self grid extent: aPoint ]