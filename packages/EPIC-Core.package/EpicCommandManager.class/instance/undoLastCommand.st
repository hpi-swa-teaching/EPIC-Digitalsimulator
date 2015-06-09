command execution
undoLastCommand

	self commandStack ifNotEmpty: [
		self commandStack removeLast undo]