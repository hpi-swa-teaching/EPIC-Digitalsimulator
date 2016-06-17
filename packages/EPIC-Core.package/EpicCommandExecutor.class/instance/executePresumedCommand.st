command execution
executePresumedCommand
	
	self presumedCommand verified ifTrue: [self executeCommand: self presumedCommand ]