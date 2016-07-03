drawing
drawIECOutputPortsOn: aCanvas
	
	aCanvas 
		line: self outputPorts first center 
		to: (self gateBoxIEC right) @ (self outputPorts first center y)
		color: Color black