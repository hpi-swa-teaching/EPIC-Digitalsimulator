as yet unclassified
fillFrameRightArc: aRectangle diameter: aDiameter color: aColor on: aCanvas
	| clipBox oval |
	clipBox := Rectangle origin: aRectangle origin + (0@ -1) extent: aRectangle extent + (1@2).
	oval := Rectangle origin: aRectangle origin - (aDiameter x / 2@0) extent: aDiameter.
	self fillFrameOval: oval color: aColor clipBy: clipBox on: aCanvas