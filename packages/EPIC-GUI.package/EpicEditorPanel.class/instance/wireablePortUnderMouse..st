wiring
wireablePortUnderMouse: aPoint
	(self portUnderMouse: aPoint) 
		ifNotNilDo: [:point | 
			point acceptsWire ifTrue: [^ point]
		].
	^ nil