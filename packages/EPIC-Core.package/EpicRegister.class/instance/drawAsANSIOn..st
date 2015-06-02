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

	aCanvas
		 line: (self gateBoxANSI bottomLeft x @ self inputPorts fifth topRight y)
		 to: (self gateBoxANSI bottomLeft x + 10 @ self inputPorts fifth center y)
		 color: Color black.
	aCanvas
		 line: (self gateBoxANSI bottomLeft x @ self inputPorts fifth bottomRight y)
		 to: (self gateBoxANSI bottomLeft x + 10 @ self inputPorts fifth center y)
		 color: Color black