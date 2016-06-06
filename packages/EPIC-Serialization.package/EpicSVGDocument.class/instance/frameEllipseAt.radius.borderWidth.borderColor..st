as yet unclassified
frameEllipseAt: aCenterPoint radius: aRadius borderWidth: aWidth borderColor: aBorderColor

	self
		drawEllipseAt: aCenterPoint
		radius: aRadius
		style: (self styleFrameWith: aBorderColor borderWidth: aWidth)