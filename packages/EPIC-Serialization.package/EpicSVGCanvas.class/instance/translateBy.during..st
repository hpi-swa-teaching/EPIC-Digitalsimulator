drawing-support
translateBy: aPoint during: aBlock
	self
		transformBy: (MatrixTransform2x3 withOffset: aPoint)
		during: aBlock