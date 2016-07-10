drawing
drawANSIXorBaseShapeOn: aCanvas
	| v leftBox |
	self drawANSIOrBaseShapeOn: aCanvas.
	v := ((1 - (3 sqrt / 2)) * self gateBoxANSI width) rounded asInteger.
	leftBox := Rectangle 
				center: self gateBoxANSI leftCenter - ((self gateBoxANSI width - v ) @ 0)
				extent: (self gateBoxANSI extent + (v@0)) * 2.
	self frameOval: (leftBox translateBy: (-8@0)) clipBy: (self gateBoxANSI translateBy: (-8@0)) on: aCanvas.