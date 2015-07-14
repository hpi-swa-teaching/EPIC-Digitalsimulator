drawing
drawBodyOn: aCanvas

	| p |
	p := EpicPolygon new.
	p
		addPoint: self gateBoxANSI topLeft;
		addPoint: self gateBoxANSI bottomLeft;
		addPoint: self gateBoxANSI bottomRight - (0@(self gateBoxANSI extent y / 3));
		addPoint: self gateBoxANSI bottomRight - (0@(self gateBoxANSI extent y  * 2 / 3)).
	self drawPolygon: p on: aCanvas