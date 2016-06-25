items
addDeleteItem
	self
		addLine;
		add: 'delete' translated action: 
			[self defaultTarget commandExecutor executeCommand: 
				self defaultTarget createDeleteCommand]