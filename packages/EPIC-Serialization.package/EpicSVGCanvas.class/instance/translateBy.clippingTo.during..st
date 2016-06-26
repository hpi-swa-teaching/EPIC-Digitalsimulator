other
translateBy: aPoint clippingTo: aRect during: aBlock
	self
		transformBy: (MatrixTransform2x3 withOffset: aPoint)
		clippingTo: aRect
		during: aBlock