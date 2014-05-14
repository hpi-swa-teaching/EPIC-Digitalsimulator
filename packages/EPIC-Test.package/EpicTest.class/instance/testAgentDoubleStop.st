agent testing
testAgentDoubleStop
	| agent |
	agent := EpicConcurrencyAgent new.
	agent startConcurrentInLoop: [agent waitForSignal].
	agent abort.
	
	self shouldnt: [agent abort] raise: Error.
	
	agent waitForIdle.
	
	self assert: [agent isIdle]