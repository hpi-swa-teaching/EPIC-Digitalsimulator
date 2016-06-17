drawing
drawAsIECOn: aCanvas

	aCanvas 
		fillRectangle: self gateBoxIEC color: self fillColor;
		frameRectangle: self gateBoxIEC color: Color black.
	aCanvas drawString: '&' at: self gateBoxIEC center - (6 @ 8).
	self drawIECInputPortsOn: aCanvas.
	self drawIECOutputPortsOn: aCanvas