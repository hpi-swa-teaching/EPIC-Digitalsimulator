visual properties
wireColor
	^ self value
		ifTrue: [Color red]
		ifFalse: [Color blue]