drawing
drawBoxOn: aCanvas
	aCanvas 
		fillRectangle: self bounds color: self fillColor;
		frameRectangle: self bounds color: Color black.
