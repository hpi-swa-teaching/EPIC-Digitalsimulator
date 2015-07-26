drawing
drawQLabelOn: aCanvas

	aCanvas drawString: 'Q' at: (self gateBoxANSI bottomRight x @ self outputPorts first center y) + (self class bigHorizontalOffset @ self class heightOffset).
	aCanvas drawString: 'Q' at: (self gateBoxANSI bottomRight x @ self outputPorts second center y) + (self class bigHorizontalOffset @ self class heightOffset)
	