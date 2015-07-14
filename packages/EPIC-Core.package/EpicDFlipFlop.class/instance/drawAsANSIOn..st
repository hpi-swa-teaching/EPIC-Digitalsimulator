drawing
drawAsANSIOn: aCanvas

	self 
		basicDrawOn: aCanvas;
		drawNegationOn: aCanvas;
		drawClockSymbolOn: aCanvas.

	aCanvas drawString: 'D' at: (self gateBoxANSI bottomLeft x @ self inputPorts first center y) + (2 @ -6).
	aCanvas drawString: 'Q' at: (self gateBoxANSI bottomRight x @ self outputPorts first center y) + (-12 @ -6).
	aCanvas drawString: 'Q' at: (self gateBoxANSI bottomRight x @ self outputPorts second center y) + (-12 @ -6)