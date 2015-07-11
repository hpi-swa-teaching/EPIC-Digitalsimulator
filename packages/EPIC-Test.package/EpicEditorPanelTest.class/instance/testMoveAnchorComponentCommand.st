command testing
testMoveAnchorComponentCommand

	| aWire startAnchorsCount |
	aWire := self getWire.
	self panel deselectAllComponents.
	startAnchorsCount := aWire anchorPoints size.
	self panel presumeAnchorMoveCommandFor: aWire..
	aWire addAnchorPoint: EpicAnchor new atIndex: 1.
	self panel commandExecutor verifyPresumedCommand.
	self panel commandExecutor executePresumedCommand.

	self assert: ( startAnchorsCount ~=  aWire anchorPoints size).

	self panel commandExecutor undoLastCommand.

	self assert: ( startAnchorsCount =  aWire anchorPoints size)

