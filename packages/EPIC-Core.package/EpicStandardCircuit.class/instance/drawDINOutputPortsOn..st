drawing
drawDINOutputPortsOn: aCanvas
	
	aCanvas 
		line: self outputPorts first center 
		to: (self gateBoxDIN right) @ (self outputPorts first center y)
		color: Color black