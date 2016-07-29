event handling
handleActionSequences: anEvent
	(self abortSequenceIsPressed: anEvent)
		ifTrue: [ self wireStub
			ifNotNil: [ self removeWireStub ]]