component modification
changePortCountFor: aComponent
	| numberOfPorts simWasActive |
	
	"deleting stuff that is currently simulated may lead to errors"
	simWasActive := simulator isStopped not.
	simulator stopSimulation.
	
	numberOfPorts := self askForPortCount: aComponent.

	aComponent adjustNumberOfInputPorts: (numberOfPorts first) numberOfOutputPorts: (numberOfPorts second).
	
	simWasActive ifTrue: [ simulator startSimulation. ].