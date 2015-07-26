accessing
calculateLeft: position

	^(self class drawingOffset + ((position \\ self outputPorts size) * self class keyWidth))