option menu
addMenuItems: aMenu
	aMenu add: 'undo' translated action: [ self commandExecutor undoLastCommand ].
	aMenu addLine.
	aMenu add: 'copy' translated action: #copySelectedComponents.
	aMenu add: 'cut' translated action: #cutSelectedComponents.
	aMenu add: 'paste' translated action: #pasteComponents.
	aMenu addLine.
	aMenu add: 'delete' translated action: #deleteSelectedComponents.
	