drawing
drawDINSemicircleOn: aCanvas
	self
		fillFrameRightArc: (Rectangle origin: self gateBoxDIN origin + (1@0) extent: self gateBoxDIN extent - (1@0))
		diameter: (self gateBoxDIN extent - (1@0)) * (2@1)
		on: aCanvas.
	
	aCanvas 
		clipBy: (Rectangle origin: self gateBoxDIN origin - (1@1) extent: (2@ (self gateBoxDIN extent y + 2)))
		during: [ :sameCanvas |
			sameCanvas
				fillRectangle: self gateBoxDIN color: self fillColor;
				frameRectangle: self gateBoxDIN color: Color black]