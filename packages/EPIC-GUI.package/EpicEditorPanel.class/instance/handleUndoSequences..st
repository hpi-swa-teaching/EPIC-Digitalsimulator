event handling
handleUndoSequences: anEvent
	(self undoSequenceIsPressed: anEvent)
		ifTrue: [ self commandManager undoLastCommand ]