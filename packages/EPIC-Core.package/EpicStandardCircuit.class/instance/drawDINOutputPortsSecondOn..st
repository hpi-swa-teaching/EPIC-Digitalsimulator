drawing
drawDINOutputPortsSecondOn: aCanvas
	
	aCanvas 
		line: self outputPorts second center 
		to: (self gateBoxDIN right) @ (self outputPorts second center y)
		color: Color black