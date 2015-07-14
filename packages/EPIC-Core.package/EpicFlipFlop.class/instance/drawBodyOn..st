drawing
drawBodyOn: aCanvas

	| p |
	p := EpicPolygon new.
	p 
		addPoint: self gateBoxANSI bottomRight;
		addPoint: self gateBoxANSI bottomLeft;
		addPoint: self gateBoxANSI topLeft;
		addPoint: self gateBoxANSI topRight.
	self drawPolygon: p on: aCanvas