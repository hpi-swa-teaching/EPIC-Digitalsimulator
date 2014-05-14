drawing
drawAsIECOn: aCanvas

	aCanvas 
		fillRectangle: self gateBoxIEC color: self fillColor;
		frameRectangle: self gateBoxIEC color: Color black.
		
	aCanvas drawString: '&' at: self gateBoxIEC center - (6@8).
	
	aCanvas 
		fillOval: self notDotIEC color: self fillColor;
		frameOval:  self notDotIEC color: Color black.
	
	self inputPorts do: [:eachPort |
		aCanvas 
			line: eachPort center 
			to: (self gateBoxIEC left) @ (eachPort center y)
			color: Color black
	].
	
	aCanvas 
		line: self outputPorts first center 
		to: (self notDotIEC right) @ (self outputPorts first center y)
		color: Color black.