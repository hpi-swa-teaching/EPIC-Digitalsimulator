drawing
drawFirstLabel: letter on: aCanvas

	aCanvas drawString: letter at: (self gateBoxANSI bottomLeft x @ self inputPorts first center y) + (self class smallHorizontalOffset @ self class heightOffset).