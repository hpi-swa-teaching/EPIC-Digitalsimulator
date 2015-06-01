drawing
drawAsDINOn: aCanvas
	
	self drawBoxOn: aCanvas.
	aCanvas drawString: 'DEMUX?' at: self center - (17@8)