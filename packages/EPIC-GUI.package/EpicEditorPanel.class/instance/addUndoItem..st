option menu
addUndoItem: aMenu
	aMenu addLine.
	aMenu add: 'undo' translated action: [ self commandExecutor undoLastCommand ].
	