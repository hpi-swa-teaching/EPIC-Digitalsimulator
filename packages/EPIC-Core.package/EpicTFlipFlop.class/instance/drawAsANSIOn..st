drawing
drawAsANSIOn: aCanvas

	self 
		basicDrawOn: aCanvas;
		drawNegationOn: aCanvas;
		drawClockSymbolOn: aCanvas.
	self drawFirstLabel: 'T' on: aCanvas.
	self drawQLabelOn: aCanvas.