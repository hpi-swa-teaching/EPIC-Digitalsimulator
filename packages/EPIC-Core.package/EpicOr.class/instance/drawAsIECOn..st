drawing
drawAsIECOn: aCanvas

	aCanvas 
		fillRectangle: self gateBoxIEC color: self fillColor;
		frameRectangle: self gateBoxIEC color: Color black.
	aCanvas drawString: '>=1' at: self gateBoxIEC center - (13 @ 8).
	self drawIECInputPortsOn: aCanvas.
	self drawIECOutputPortsOn: aCanvas