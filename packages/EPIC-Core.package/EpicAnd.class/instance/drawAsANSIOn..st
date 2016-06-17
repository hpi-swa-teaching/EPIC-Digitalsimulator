drawing
drawAsANSIOn: aCanvas
	| p leftBox rightBox |
	leftBox := Rectangle 
				origin: self gateBoxANSI topLeft 
				extent: self gateBoxANSI extent / (2@1). 
	rightBox := Rectangle 
				origin: self gateBoxANSI topCenter 
				extent: self gateBoxANSI extent / (2@1). 
	p := EpicPolygon new.
	p 
		addPoint: leftBox bottomRight;
		addPoint: leftBox bottomLeft;
		addPoint: leftBox topLeft;
		addPoint: leftBox topRight;
		addArc: self gateBoxANSI clippedBy: rightBox.
	self drawPolygon: p on: aCanvas.
	self drawANSIInputPortsOn: aCanvas.
	self drawANSIIOutputPortsOn: aCanvas
