as yet unclassified
drawAsEPICOn: aCanvas
	
	self drawBoxOn: aCanvas.
	aCanvas drawString: 'CONVERTER' at: self center - (35@8).