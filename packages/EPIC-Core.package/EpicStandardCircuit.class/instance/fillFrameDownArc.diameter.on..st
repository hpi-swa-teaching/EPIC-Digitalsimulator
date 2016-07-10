as yet unclassified
fillFrameDownArc: aRectangle diameter: aDiameter on: aCanvas
	| clipBox oval |
	clipBox := Rectangle origin: aRectangle origin + (-1@ 0) extent: aRectangle extent + (2@1).
	oval := Rectangle origin: aRectangle origin - (0@aDiameter y / 2) extent: aDiameter.
	self fillFrameOval: oval clipBy: clipBox on: aCanvas
