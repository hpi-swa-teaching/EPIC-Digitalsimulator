event handling
handleSelectionSequences: anEvent
	(self selectAllSequenceIsPressed: anEvent)
		ifTrue: [ self selectAllComponentsAndWires ].
	(self deleteSequenceIsPressed: anEvent)
		ifTrue: [ 
			self commandManager executeCommand: (EpicDeleteCommand newFor: self)
			 "self deleteSelectedComponents" ]