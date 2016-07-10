drawing
drawAsDINOn:aCanvas
	self
		fillFrameRightArc: (Rectangle origin: self gateBoxDIN origin + (1@0) extent: self gateBoxDIN extent - (1@0))
		diameter: (self gateBoxDIN extent - (1@0)) * (2@1)
		on: aCanvas.
	
	aCanvas 
		clipBy: (Rectangle origin: self gateBoxDIN origin - (1@1) extent: (2@ (self gateBoxDIN extent y + 2)))
		during: [ :sameCanvas |
			sameCanvas
				fillRectangle: self gateBoxDIN color: self fillColor;
				frameRectangle: self gateBoxDIN color: Color black].
		
	aCanvas 
		fillOval: self notDotDIN color: Color black;
		frameOval:  self notDotDIN color: Color black.
	self drawDINInputPortsOn: aCanvas.	
	aCanvas 
		line: self outputPorts first center 
		to: (self notDotDIN right) @ (self outputPorts first center y)
		color: Color black.
	aCanvas 
		line: self gateBoxDIN center - (3 @ 0)
		to: self gateBoxDIN center + (3 @ 0)
		color: Color black.
	aCanvas 
		line: self gateBoxDIN center - (0 @ 3)
		to: self gateBoxDIN center + (0 @ 3)
		color: Color black.
	aCanvas 
		frameOval: (Rectangle center: self gateBoxDIN center extent: 11 @ 11) 
		color: Color black