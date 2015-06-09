command execution
executeCommand: aCommand

	aCommand execute.
	aCommand class isUndoable ifTrue: [commandStack addLast: aCommand]