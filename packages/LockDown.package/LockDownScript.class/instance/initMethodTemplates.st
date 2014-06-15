deploying
initMethodTemplates

	| methods |
	 methods := {#ownerChanged . #blueButtonDown: . #handleMouseDown: . #handlerForYellowButtonDown: . {#quitSession . TheWorldMenu}}.
	
	methods do: [:each | each isSymbol 
		ifTrue: [self initMethodTemplate: each in: self program class]
		ifFalse: [self initMethodTemplate: (each at: 1) in: (each at: 2)]]