drawing
drawANSIIOutputPortsOn: aCanvas

	aCanvas 
		line: self outputPorts first center 
		to: (self gateBoxANSI right) @ (self outputPorts first center y)
		color: Color black