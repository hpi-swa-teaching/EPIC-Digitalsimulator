circuit tabbing
nextCircuitFrom: anIndex
	((anIndex - 1) > 1)
	ifTrue: [ ^ self circuits at: (anIndex - 1)]
	ifFalse: [ ^ self circuits at: 1 ]