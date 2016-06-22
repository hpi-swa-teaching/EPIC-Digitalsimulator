as yet unclassified
fillPolygon: vertices fillColor: aFillColor borderWidth: aWidth borderColor: aBorderColor

	self
		drawPolygon: vertices
		style: (self styleFillWith: aFillColor borderWidth: aWidth borderColor: aBorderColor)