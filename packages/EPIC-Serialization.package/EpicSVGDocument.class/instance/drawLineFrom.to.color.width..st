as yet unclassified
drawLineFrom: aStartPoint to: anEndPoint color: aColor width: aWidth

	self
		drawLineFrom: aStartPoint
		to: anEndPoint
		style: (self styleFrameWith: aColor borderWidth: aWidth)