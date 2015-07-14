drawing
drawClockSymbolOn: aCanvas

	aCanvas
		 line: (self gateBoxANSI bottomLeft x @ self inputPorts second topRight y)
		 to: (self gateBoxANSI bottomLeft x + 10 @ self inputPorts second center y)
		 color: Color black.
	aCanvas
		 line: (self gateBoxANSI bottomLeft x @ self inputPorts second bottomRight y)
		 to: (self gateBoxANSI bottomLeft x + 10 @ self inputPorts second center y)
		 color: Color black