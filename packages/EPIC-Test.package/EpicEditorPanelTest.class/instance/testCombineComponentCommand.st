command testing
testCombineComponentCommand

	| combineCommand |
	
	self panel selectAllComponentsAndWires.
	combineCommand := self panel createCombineCommand.
	self panel handleOutsideCommand: combineCommand.

	self assert: (self panel components size = 1).

	self panel commandExecutor undoLastCommand.

	self assert: (self panel components size = self class initialComponentCount)