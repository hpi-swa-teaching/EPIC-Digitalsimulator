drawing
drawAsANSIOn: aCanvas

	| leftBox rightBox |
	leftBox := Rectangle 
				origin: self gateBoxANSI topLeft 
				extent: self gateBoxANSI extent / (2@1). 
	rightBox := Rectangle 
				origin: self gateBoxANSI topCenter 
				extent: self gateBoxANSI extent / (2@1). 
	aCanvas 
		clipBy: (Rectangle origin: leftBox origin - (1@1) extent: leftBox extent + (1@2))
		during: [ :sameCanvas |
			sameCanvas
				fillRectangle: self gateBoxANSI color: self fillColor;
				frameRectangle: self gateBoxANSI color: Color black].
	self fillFrameRightArc: rightBox diameter: self gateBoxANSI extent on: aCanvas.				
	
	aCanvas 
		fillOval: self notDotANSI color: self fillColor;
		frameOval:  self notDotANSI color: Color black.
	self drawANSIInputPortsOn: aCanvas.	
	aCanvas 
		line: self outputPorts first center 
		to: (self notDotANSI right) @ (self outputPorts first center y)
		color: Color black
	