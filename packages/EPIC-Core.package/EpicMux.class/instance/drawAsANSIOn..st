drawing
drawAsANSIOn: aCanvas
	| p xyratio |
	p := EpicPolygon new.
	xyratio := 0.
	p
		addPoint: self gateBoxANSI topLeft;
		addPoint: self gateBoxANSI bottomLeft;
		addPoint: self gateBoxANSI bottomRight - (0@(self gateBoxANSI extent y / 3));
		addPoint: self gateBoxANSI bottomRight - (0@(self gateBoxANSI extent y  * 2 / 3)).
	
	self drawPolygon: p on: aCanvas.

	self inputPorts do: [:eachPort |
		aCanvas 
			line: eachPort center 
			to: (self gateBoxANSI left) @ (eachPort center y)
			color: Color black
	].

	self selectorPorts do: [:eachPort |
		xyratio := (self gateBoxANSI bottomLeft x - eachPort center x) / (self gateBoxANSI bottomLeft x - self gateBoxANSI bottomRight x).
		aCanvas
			line: eachPort center
			to: (eachPort center x) @ (self gateBoxANSI bottomLeft y - (self gateBoxANSI extent y / 3 * xyratio))
			color: Color black
	].

	aCanvas 
		line: self outputPorts first center 
		to: (self gateBoxANSI right) @ (self outputPorts first center y)
		color: Color black