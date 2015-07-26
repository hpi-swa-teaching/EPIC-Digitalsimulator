drawing
drawAsDINOn:aCanvas
	| p arcBox |
	arcBox := Rectangle 
				center: self gateBoxDIN leftCenter
				extent: self gateBoxDIN extent * (2 @ 1). 
	p := EpicPolygon new.
	p 
		addPoint: self gateBoxDIN bottomLeft;
		addPoint: self gateBoxDIN topLeft;
		addArc: arcBox clippedBy: self gateBoxDIN.
	self drawPolygon: p on: aCanvas.
	self drawDINInputPortsOn: aCanvas.
	self drawDINOutputPortsOn: aCanvas