deploying
initMethodTemplates

	| methods |
	 methods := #(#ownerChanged #blueButtonDown: #handleMouseDown: #handlerForYellowButtonDown:).
	
	methods do: [:each | self initMethodTemplate: each]