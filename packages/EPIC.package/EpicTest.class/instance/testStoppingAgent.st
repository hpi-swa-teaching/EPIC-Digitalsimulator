agent testing
testStoppingAgent
	| agent |
	agent := EpicConcurrencyAgent new.
	agent
		 startConcurrentInLoop: [nil];
		abort;
		waitForIdle.
	self assert: [agent isIdle]