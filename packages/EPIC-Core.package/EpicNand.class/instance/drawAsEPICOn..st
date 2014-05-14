drawing
drawAsEPICOn: aCanvas
	
	self drawBoxOn: aCanvas.
	aCanvas drawString: 'NAND' at: self center - (17@8).	
	