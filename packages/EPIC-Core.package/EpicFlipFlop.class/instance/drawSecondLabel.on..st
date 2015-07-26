drawing
drawSecondLabel: letter on: aCanvas

	aCanvas drawString: letter at: (self gateBoxANSI bottomLeft x @ self inputPorts second center y) + (self class smallHorizontalOffset @ self class heightOffset).