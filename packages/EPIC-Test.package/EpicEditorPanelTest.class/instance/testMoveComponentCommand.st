command testing
testMoveComponentCommand

	| aComponent  startPosition |
	aComponent := EpicTestGate new.
	self panel deselectAllComponents.
	self panel addComponent: aComponent.
	startPosition := aComponent position.
	aComponent select.
	self panel presumeMoveCommand.
	aComponent position: ( 10 @ 10).
	self panel commandExecutor verifyPresumedCommand.
	self panel commandExecutor executePresumedCommand.

	self assert: ( startPosition =  aComponent position ) not.

	self panel commandExecutor undoLastCommand.

	self assert: ( startPosition =  aComponent position )

