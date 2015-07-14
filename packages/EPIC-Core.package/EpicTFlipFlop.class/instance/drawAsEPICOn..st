drawing
drawAsEPICOn: aCanvas
	
	self drawBoxOn: aCanvas.
	aCanvas drawString: 'T' at: self center - (17@8)