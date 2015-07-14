drawing
drawAsEPICOn: aCanvas
	
	self drawBoxOn: aCanvas.
	aCanvas drawString: 'REGISTER' at: self center - (28@8)