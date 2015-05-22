as yet unclassified
drawAsEPICOn: aCanvas
	
	self drawBoxOn: aCanvas.
	aCanvas drawString: 'RS' at: self center - (17@8)