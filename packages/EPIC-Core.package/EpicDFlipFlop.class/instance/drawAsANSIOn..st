drawing
drawAsANSIOn: aCanvas

	self 
		basicDrawOn: aCanvas;
		drawNegationOn: aCanvas;
		drawClockSymbolOn: aCanvas.
	self drawFirstLabel: 'D' on: aCanvas.
	self drawQLabelOn: aCanvas.