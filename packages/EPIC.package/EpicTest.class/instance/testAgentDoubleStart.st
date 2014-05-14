agent testing
testAgentDoubleStart
	| agent |
	agent := EpicConcurrencyAgent new.
	agent startConcurrentInLoop: [agent waitForSignal].
	
	self should: [agent startConcurrentInLoop: [nil]] raise: Error.
	
	agent 
		abort;
		waitForIdle.
	
	self assert: [agent isIdle]