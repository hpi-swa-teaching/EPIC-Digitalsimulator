initialization
innerBounds
	^ Rectangle
		origin: (self bounds origin)
		extent: (self class gateSize - ((self class circleDiameter + (self inputPorts first width // 2))@0))