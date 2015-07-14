drawing
drawAsEPICOn: aCanvas
	
	self drawBoxOn: aCanvas.
	aCanvas drawString: 'D' at: self center - (17@8)