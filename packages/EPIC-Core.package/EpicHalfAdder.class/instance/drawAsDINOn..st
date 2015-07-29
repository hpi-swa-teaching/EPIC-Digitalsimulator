drawing
drawAsDINOn: aCanvas

	aCanvas 
		fillRectangle: self gateBoxDIN color: self fillColor;
		frameRectangle: self gateBoxDIN color: Color black.
	aCanvas drawString: '1 N1,2' at: self gateBoxDIN center - (19 @ 14).
	aCanvas drawString: '2 G1,2' at: self gateBoxDIN center - (19 @ -1).
	self drawDINInputPortsOn: aCanvas.
	self drawDINOutputPortsOn: aCanvas.
	self drawDINOutputPortsSecondOn: aCanvas


		

