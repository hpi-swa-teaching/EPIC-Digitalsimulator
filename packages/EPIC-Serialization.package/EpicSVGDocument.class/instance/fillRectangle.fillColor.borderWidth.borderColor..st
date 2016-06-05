as yet unclassified
fillRectangle: aRectangle fillColor: aFillColor borderWidth: aWidth borderColor: aBorderColor

	self
		drawRectangle: aRectangle
		style: (self styleFillWith: aFillColor borderWidth: aWidth borderColor: aBorderColor)