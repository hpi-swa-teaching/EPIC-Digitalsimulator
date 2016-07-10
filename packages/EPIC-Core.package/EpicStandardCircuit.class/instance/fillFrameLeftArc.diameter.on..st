as yet unclassified
fillFrameLeftArc: aRectangle diameter: aDiameter on: aCanvas
	| clipBox oval |
	clipBox := Rectangle origin: aRectangle origin + (-1@ -1) extent: aRectangle extent + (1@2).
	oval := Rectangle origin: aRectangle origin extent: aDiameter.
	self fillFrameOval: oval clipBy: clipBox on: aCanvas