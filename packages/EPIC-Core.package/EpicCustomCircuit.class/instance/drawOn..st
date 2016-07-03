drawing
drawOn: aCanvas
	aCanvas
		fillRectangle: self bounds color: self fillColor;
		frameRectangle: self bounds color: Color black;
		drawString: self displayName at: self center - (19 @ 8)