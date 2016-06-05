as yet unclassified
fillEllipseAt: aCenterPoint radius: aRadius color: aColor borderWidth: aWidth borderColor: aBorderColor

	self
		drawEllipseAt: aCenterPoint
		radius: aRadius
		style: (self styleFillWith: aColor borderWidth: aWidth borderColor: aBorderColor)