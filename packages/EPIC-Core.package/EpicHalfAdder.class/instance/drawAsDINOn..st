drawing
drawAsDINOn: aCanvas

	aCanvas 
		fillRectangle: self gateBoxDIN color: self fillColor;
		frameRectangle: self gateBoxDIN color: Color black.
		
	aCanvas drawString: '1 N1,2' at: self gateBoxDIN center - (19@14).
	aCanvas drawString: '2 G1,2' at: self gateBoxDIN center - (19@(-1)).
	
	self inputPorts do: [:eachPort |
		aCanvas 
			line: eachPort center 
			to: (self gateBoxDIN left) @ (eachPort center y)
			color: Color black
	].
	
	aCanvas 
		line: self outputPorts first center 
		to: (self gateBoxDIN right) @ (self outputPorts first center y)
		color: Color black.

	aCanvas 
		line: self outputPorts second center 
		to: (self gateBoxDIN right) @ (self outputPorts second center y)
		color: Color black.


		

