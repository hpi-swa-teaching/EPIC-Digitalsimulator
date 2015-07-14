drawing
drawAsANSIOn: aCanvas
	
	self 
		drawBodyOn: aCanvas;
		connectOutputPortsOn: aCanvas;
		connectSelectorPortsOn: aCanvas.

	aCanvas 
		line: self inputPorts first center 
		to: (self gateBoxANSI left) @ (self inputPorts first center y)
		color: Color black