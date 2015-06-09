command execution
undoLastCommand

	self commandStack ifNotEmpty: [
		self commandStack pop undo]