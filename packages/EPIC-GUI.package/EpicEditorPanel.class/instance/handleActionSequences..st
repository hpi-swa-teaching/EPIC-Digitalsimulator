event handling
handleActionSequences: anEvent
	(self abortSequenceIsPressed: anEvent)
		ifTrue: [ self wireStub
			ifNil: [ self eventuallyExitCurrentCircuit ]
			ifNotNil: [ self removeWireStub ]
		]