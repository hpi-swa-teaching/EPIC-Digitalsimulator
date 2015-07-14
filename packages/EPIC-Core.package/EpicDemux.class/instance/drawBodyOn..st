drawing
drawBodyOn: aCanvas

	| p |
	p := EpicPolygon new.
	p
		addPoint: self gateBoxANSI topRight;
		addPoint: self gateBoxANSI bottomRight;
		addPoint: self gateBoxANSI bottomLeft - (0@(self gateBoxANSI extent y / 3));
		addPoint: self gateBoxANSI bottomLeft - (0@(self gateBoxANSI extent y  * 2 / 3)).
	self drawPolygon: p on: aCanvas