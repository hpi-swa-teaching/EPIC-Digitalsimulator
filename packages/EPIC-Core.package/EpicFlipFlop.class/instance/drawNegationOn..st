drawing
drawNegationOn: aCanvas

	aCanvas
		line: (self gateBoxANSI bottomRight x - 3 @ self outputPorts second topLeft y)
		to: (self gateBoxANSI bottomRight x - 12 @ self outputPorts second topLeft y)
		color: Color black