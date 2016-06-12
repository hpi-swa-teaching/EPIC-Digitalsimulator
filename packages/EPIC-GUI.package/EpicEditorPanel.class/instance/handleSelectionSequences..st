event handling
handleSelectionSequences: anEvent
	(self selectAllSequenceIsPressed: anEvent)
		ifTrue: [ self selectAllComponentsAndWires ].
	(self deleteSequenceIsPressed: anEvent)
		ifTrue: [ 
			self commandExecutor executeCommand: self createDeleteCommand ].
	(self addTunnelEndSequenceIsPressed: anEvent)
		ifTrue: [ 
			self commandExecutor executeCommand: self createAddTunnelEndCommand ]