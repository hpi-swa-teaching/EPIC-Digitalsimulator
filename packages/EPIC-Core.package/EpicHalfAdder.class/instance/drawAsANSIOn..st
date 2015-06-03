drawing
drawAsANSIOn: aCanvas

	aCanvas 
		fillRectangle: self gateBoxANSI color: self fillColor;
		frameRectangle: self gateBoxANSI color: Color black.
		
	aCanvas drawString: '1-bit' at: self gateBoxANSI center - (18@18).
	aCanvas drawString: 'half' at: self gateBoxANSI center - (18@5).
      aCanvas drawString: 'adder' at: self gateBoxANSI center - (18@(-7)).
	
	self inputPorts do: [:eachPort |
		aCanvas 
			line: eachPort center 
			to: (self gateBoxANSI left) @ (eachPort center y)
			color: Color black].
	
	self outputPorts do: [:eachPort |
		aCanvas 
			line: eachPort center 
			to: (self gateBoxANSI right) @ (eachPort center y)
			color: Color black].