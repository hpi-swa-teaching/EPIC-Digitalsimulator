accessing
borderCrossingOutgoingWires
	^ self subWires select: [:eachWire |
		(self subComponents includes: eachWire endPort component) not
	]