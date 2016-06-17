drawing
drawOn: aCanvas
	aCanvas 
		fillRectangle: self bounds color: self fillColor;
		frameRectangle: self bounds color: Color black;
		drawString: '_|¯|_|¯' at: self center - (17@8)