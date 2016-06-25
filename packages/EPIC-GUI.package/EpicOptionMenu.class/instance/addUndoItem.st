items
addUndoItem
	self 
		addLine;
		add: 'undo' translated action: [ self defaultTarget commandExecutor undoLastCommand ].
	