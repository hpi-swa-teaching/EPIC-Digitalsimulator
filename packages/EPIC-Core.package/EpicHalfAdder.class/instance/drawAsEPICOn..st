drawing
drawAsEPICOn: aCanvas

	self drawBoxOn: aCanvas.
	aCanvas drawString: 'ADD' at: self center - (17 @ 8)