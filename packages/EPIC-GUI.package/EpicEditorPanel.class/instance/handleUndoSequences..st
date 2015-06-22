event handling
handleUndoSequences: anEvent
	(self undoSequenceIsPressed: anEvent)
		ifTrue: [ self commandExecutor undoLastCommand ]