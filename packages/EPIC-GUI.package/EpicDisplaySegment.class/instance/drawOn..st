drawing
drawOn: aCanvas
	
	aCanvas fillRectangle: self bounds color: self fillColor.
	aCanvas frameRectangle: self bounds color: Color black. 