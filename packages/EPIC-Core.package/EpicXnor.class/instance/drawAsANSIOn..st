drawing
drawAsANSIOn: aCanvas
	| upperBox lowerBox v leftBox|
	v := ((1 - (3 sqrt / 2)) * self gateBoxANSI width) rounded asInteger.
	upperBox := Rectangle 
				center: self gateBoxANSI bottomLeft 
				extent: (self gateBoxANSI extent + (v@0)) * 2.
	lowerBox := Rectangle 
				center: self gateBoxANSI topLeft 
				extent: (self gateBoxANSI extent + (v@0)) * 2.
	leftBox := Rectangle 
				center: self gateBoxANSI leftCenter - ((self gateBoxANSI width - v ) @ 0)
				extent: (self gateBoxANSI extent + (v@0)) * 2.
	
	self fillFrameOval: upperBox clipBy: (Rectangle origin: self gateBoxANSI origin extent: self gateBoxANSI extent / (1@2)) on: aCanvas.
	self fillFrameOval: lowerBox clipBy: (Rectangle origin: self gateBoxANSI origin + (0 @ (self gateBoxANSI extent y / 2)) extent: self gateBoxANSI extent / (1@2)) on: aCanvas.
	self fillFrameOval: leftBox color: Color white clipBy: self gateBoxANSI on: aCanvas.
	self frameOval: (leftBox translateBy: (-8@0)) clipBy: (self gateBoxANSI translateBy: (-8@0)) on: aCanvas.
	
	aCanvas 
		fillOval: self notDotANSI color: self fillColor;
		frameOval:  self notDotANSI color: Color black.
	
	self inputPorts do: [:eachPort |
		aCanvas 
			line: eachPort center 
			to: (self gateBoxANSI left + 8) @ (eachPort center y)
			color: Color black
	].
	
	aCanvas 
		line: self outputPorts first center 
		to: (self notDotANSI right) @ (self outputPorts first center y)
		color: Color black