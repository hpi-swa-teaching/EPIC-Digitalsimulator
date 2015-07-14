drawing
drawAsANSIOn: aCanvas

	self 
		drawBodyOn: aCanvas;
		connectInputPortsOn: aCanvas;
		connectSelectorPortsOn: aCanvas.

	aCanvas 
		line: self outputPorts first center 
		to: (self gateBoxANSI right) @ (self outputPorts first center y)
		color: Color black