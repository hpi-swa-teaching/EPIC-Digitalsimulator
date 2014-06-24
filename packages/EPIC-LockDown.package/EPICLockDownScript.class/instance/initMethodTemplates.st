deploying
initMethodTemplates

	| methods |
	 methods := {{#ownerChanged . self program class} . #blueButtonDown:. #handleMouseDown: . #handlerForYellowButtonDown: . {#quitSession . TheWorldMenu}}.
	
	methods do: [:each | each isSymbol 
		ifTrue: [self initMethodTemplate: each in: Morph]
		ifFalse: [self initMethodTemplate: (each at: 1) in: (each at: 2)]]