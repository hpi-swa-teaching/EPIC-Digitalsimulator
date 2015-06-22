deletion testing
testDeleteCommand
	
	| oldComponentCount |
	self panel addComponent: EpicTestGate new.
	oldComponentCount := self panel components size.
	self panel selectAllComponentsAndWires.
	self panel handleOutsideCommand: (EpicDeleteCommand newFor: self panel).
	
	self assert: [self panel components size = 0].
	
	self panel commandManager undoLastCommand.
	
	self assert: [self panel components size = oldComponentCount]