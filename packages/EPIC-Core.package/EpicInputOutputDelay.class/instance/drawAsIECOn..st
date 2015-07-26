drawing
drawAsIECOn: aCanvas

	aCanvas 
		fillRectangle: self gateBoxIEC color: self fillColor;
		frameRectangle: self gateBoxIEC color: Color black.
	aCanvas drawString: 'WAIT' at: self gateBoxIEC center - (15 @ 8).
	self drawIECInputPortsOn: aCanvas.
	self drawIECOutputPortsOn: aCanvas