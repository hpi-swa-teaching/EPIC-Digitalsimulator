drawing
drawAsEPICOn: aCanvas
	
	self drawBoxOn: aCanvas.
	aCanvas drawString: 'NOT' at: self center - (17@8).	
	