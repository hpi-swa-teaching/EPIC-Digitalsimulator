drawing
drawOn: aCanvas
	
	aCanvas fillRectangle: self bounds color: Color white.
	aCanvas frameRectangle: self bounds color: Color black.
	aCanvas drawString: self label  at: self center - (3@5).