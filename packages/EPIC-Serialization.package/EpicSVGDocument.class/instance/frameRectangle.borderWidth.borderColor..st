as yet unclassified
frameRectangle: aRectangle borderWidth: aWidth borderColor: aBorderColor

	self
		drawRectangle: aRectangle
		style: (self styleFrameWith: aBorderColor borderWidth: aWidth)