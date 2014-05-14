drawing
drawOn: aCanvas
	
	aCanvas fillRectangle:  self bounds color: self fillColor.
	aCanvas frameRectangle:  self bounds color: Color black.
	
	aCanvas drawString: '1' at: self center - (17@8)
	
	
	