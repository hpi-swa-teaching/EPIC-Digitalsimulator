drawing
drawAsANSIOn: aCanvas
	| p |
	p := EpicPolygon new.
	p 
		addPoint: self gateBoxANSI topLeft;
		addPoint: self gateBoxANSI rightCenter;
		addPoint: self gateBoxANSI bottomLeft.
	self drawPolygon: p on: aCanvas.
	self drawANSIInputPortsOn: aCanvas.
	self drawANSIIOutputPortsOn: aCanvas
	