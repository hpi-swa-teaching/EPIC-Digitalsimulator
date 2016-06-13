option menu
addDeleteItem: aMenu

	aMenu addLine.
	aMenu add: 'delete' translated action: [self commandExecutor executeCommand: self createDeleteCommand]
	