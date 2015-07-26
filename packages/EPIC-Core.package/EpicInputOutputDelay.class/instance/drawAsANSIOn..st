drawing
drawAsANSIOn: aCanvas

	aCanvas 
		fillRectangle: self gateBoxANSI color: self fillColor;
		frameRectangle: self gateBoxANSI color: Color black.
	aCanvas drawString: 'WA' at: self gateBoxANSI center - (12 @ 12).
      aCanvas drawString: 'IT' at: self gateBoxANSI center - (8 @ 0).
	self drawANSIInputPortsOn: aCanvas.
	self drawANSIIOutputPortsOn: aCanvas

	
