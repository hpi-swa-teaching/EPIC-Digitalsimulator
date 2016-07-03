accessing
borderCrossingIncomingWires
	^ self subWires select: [:eachWire |
		(self subComponents includes: eachWire startPort component) not
	]