drawing
drawClockSymbolOn: aCanvas

	aCanvas
		 line: (self gateBoxANSI bottomLeft x @ self inputPorts fifth topRight y)
		 to: (self gateBoxANSI bottomLeft x + 10 @ self inputPorts fifth center y)
		 color: Color black.
	aCanvas
		 line: (self gateBoxANSI bottomLeft x @ self inputPorts fifth bottomRight y)
		 to: (self gateBoxANSI bottomLeft x + 10 @ self inputPorts fifth center y)
		 color: Color black