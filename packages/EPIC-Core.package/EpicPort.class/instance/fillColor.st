drawing
fillColor
	^ self numberOfWires > 0
		ifTrue: [Color veryLightGray]
		ifFalse: [Color white]