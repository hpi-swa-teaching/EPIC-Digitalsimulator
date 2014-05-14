visual properties
fillColor
	^ self isPowered 
		ifTrue: [Color red] 
		ifFalse: [Color white]