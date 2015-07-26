drawing
drawAsANSIOn: aCanvas

	aCanvas 
		fillRectangle: self gateBoxANSI color: self fillColor;
		frameRectangle: self gateBoxANSI color: Color black.
	aCanvas drawString: 'WA' at: self gateBoxANSI center - (12 @ 12).
      aCanvas drawString: 'IT' at: self gateBoxANSI center - (8 @ 0).
	self inputPorts do: [ :eachPort |
		aCanvas 
			line: eachPort center 
			to: (self gateBoxANSI left) @ (eachPort center y)
			color: Color black].
	aCanvas 
		line: self outputPorts first center 
		to: (self gateBoxANSI right) @ (self outputPorts first center y)
		color: Color black.

	
