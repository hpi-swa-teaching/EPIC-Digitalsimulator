drawing
drawAsIECOn: aCanvas

	aCanvas 
		fillRectangle: self gateBoxIEC color: self fillColor;
		frameRectangle: self gateBoxIEC color: Color black.
	aCanvas drawString: '>=1' at: self gateBoxIEC center - (13 @ 8).
	aCanvas 
		fillOval: self notDotIEC color: self fillColor;
		frameOval:  self notDotIEC color: Color black.
	self drawIECInputPortsOn: aCanvas.
	aCanvas 
		line: self outputPorts first center 
		to: (self notDotIEC right) @ (self outputPorts first center y)
		color: Color black.