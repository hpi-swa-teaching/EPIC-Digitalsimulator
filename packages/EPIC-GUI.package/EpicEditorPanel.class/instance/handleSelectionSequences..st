event handling
handleSelectionSequences: anEvent
	(self selectAllSequenceIsPressed: anEvent)
		ifTrue: [ self selectAllComponentsAndWires ].
	(self deleteSequenceIsPressed: anEvent)
		ifTrue: [ self deleteSelectedComponents ]