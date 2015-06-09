command execution
executeCommand: aCommand

	aCommand execute.
	aCommand isUndoable ifTrue: [commandStack push: aCommand]