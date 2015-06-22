deletion testing
testDeleteCommand
	
	| oldComponentCount |
	self panel addComponent: EpicTestGate new.
	oldComponentCount := self panel components size.
	self panel selectAllComponentsAndWires.
	self panel handleOutsideCommand: self panel createDeleteCommand.
	
	self assert: [self panel components size = 0].
	
	self panel commandExecutor undoLastCommand.
	
	self assert: [self panel components size = oldComponentCount]