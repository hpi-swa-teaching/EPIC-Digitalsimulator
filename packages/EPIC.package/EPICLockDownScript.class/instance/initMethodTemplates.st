deploying
initMethodTemplates

	self initErrorHandling.
	#((ownerChanged EpicWindow) 
	blueButtonDown: 
	handleMouseDown: 
	yellowButtonActivity:
	(quitSession TheWorldMenu)) do: [:each | each isSymbol
		ifTrue: [self initMethodTemplate: each in: Morph]
		ifFalse: [self initMethodTemplate: (each at: 1) in: (self class environment at: (each at: 2))]].