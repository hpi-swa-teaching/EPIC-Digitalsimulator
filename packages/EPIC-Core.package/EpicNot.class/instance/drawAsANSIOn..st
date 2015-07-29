drawing
drawAsANSIOn: aCanvas

	| p |
	p := EpicPolygon new.
	p 
		addPoint: self gateBoxANSI topLeft;
		addPoint: self gateBoxANSI rightCenter;
		addPoint: self gateBoxANSI bottomLeft.
	self drawPolygon: p on: aCanvas.
	aCanvas 
		fillOval: self notDotANSI color: self fillColor;
		frameOval:  self notDotANSI color: Color black.	
	self drawANSIInputPortsOn: aCanvas.
	aCanvas 
		line: self outputPorts first center 
		to: (self notDotANSI right) @ (self outputPorts first center y)
		color: Color black
	