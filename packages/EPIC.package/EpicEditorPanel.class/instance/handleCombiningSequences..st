event handling
handleCombiningSequences: anEvent
	(self combiningSequenceIsPressed: anEvent)
		ifTrue: [ self combineSelectedComponentsToNamedCircuit ]