as yet unclassified
drawLineFrom: aStartPoint to: anEndPoint color: aColor width: aWidth

	self
		drawLineFrom: aStartPoint
		to: anEndPoint
		style: (self styleStrokeWith: aColor borderWidth: aWidth)