accessing
calculateRight: position

	^self class drawingOffset + ((position // self outputPorts size) * self class keyWidth)
	