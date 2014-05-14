drawing
drawAsIECOn: aCanvas

	aCanvas 
		fillRectangle: self gateBoxIEC color: self fillColor;
		frameRectangle: self gateBoxIEC color: Color black.
		
	aCanvas drawString: '>=1' at: self gateBoxIEC center - (13@8).
	
	self inputPorts do: [:eachPort |
		aCanvas 
			line: eachPort center 
			to: (self gateBoxIEC left) @ (eachPort center y)
			color: Color black
	].
	
	aCanvas 
		line: self outputPorts first center 
		to: (self gateBoxIEC right) @ (self outputPorts first center y)
		color: Color black.