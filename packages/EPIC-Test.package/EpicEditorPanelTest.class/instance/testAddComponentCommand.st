deletion testing
testAddComponentCommand

	| oldComponentCount |
	oldComponentCount := self panel components size.
	self panel handleOutsideCommand: ((EpicAddComponentCommand newFor: self panel) component: EpicTestGate new).
	
	self assert: [self panel components size = (oldComponentCount + 1)].
	
	self panel commandExecutor undoLastCommand.

	self assert: [self panel components size = oldComponentCount]
