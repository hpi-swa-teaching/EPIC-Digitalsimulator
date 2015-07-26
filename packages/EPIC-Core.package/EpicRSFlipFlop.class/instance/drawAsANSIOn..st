drawing
drawAsANSIOn: aCanvas

	self 
		basicDrawOn: aCanvas;
		drawNegationOn: aCanvas.
	self drawFirstLabel: 'S' on: aCanvas.
	self drawSecondLabel: 'R' on: aCanvas.
	self drawQLabelOn: aCanvas.