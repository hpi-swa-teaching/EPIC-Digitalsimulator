as yet unclassified
drawAsANSIOn: aCanvas
	| p |
	p := EpicPolygon new.
	p 
		addPoint: self gateBoxANSI bottomRight;
		addPoint: self gateBoxANSI bottomLeft;
		addPoint: self gateBoxANSI topLeft;
		addPoint: self gateBoxANSI topRight.
	
	self drawPolygon: p on: aCanvas.
	
	self inputPorts do: [:eachPort |
		aCanvas 
			line: eachPort center 
			to: (self gateBoxANSI left) @ (eachPort center y)
			color: Color black
	].
	
	self outputPorts do: [:eachPort |
		aCanvas 
			line: eachPort center 
			to: (self gateBoxANSI right) @ (eachPort center y)
			color: Color black
	].

	aCanvas drawString: 'D' at: (self gateBoxANSI bottomLeft x @ self inputPorts first center y) + (2 @ -6).
	aCanvas drawString: 'Q' at: (self gateBoxANSI bottomRight x @ self outputPorts first center y) + (-12 @ -6).
	aCanvas drawString: 'Q' at: (self gateBoxANSI bottomRight x @ self outputPorts second center y) + (-12 @ -6).

	aCanvas
		line: (self gateBoxANSI bottomRight x - 3 @ self outputPorts second topLeft y)
		to: (self gateBoxANSI bottomRight x - 12 @ self outputPorts second topLeft y)
		color: Color black.

	aCanvas
		 line: (self gateBoxANSI bottomLeft x @ self inputPorts second topRight y)
		 to: (self gateBoxANSI bottomLeft x + 10 @ self inputPorts second center y)
		 color: Color black.
	aCanvas
		 line: (self gateBoxANSI bottomLeft x @ self inputPorts second bottomRight y)
		 to: (self gateBoxANSI bottomLeft x + 10 @ self inputPorts second center y)
		 color: Color black