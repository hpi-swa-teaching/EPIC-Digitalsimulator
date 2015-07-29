drawing
drawAsEPICOn: aCanvas

	self drawBoxOn: aCanvas.
	aCanvas drawString: 'EQ' at: self center - (17 @ 8)
	