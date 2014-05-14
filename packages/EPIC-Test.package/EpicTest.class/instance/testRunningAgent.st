agent testing
testRunningAgent
	| agent |
	agent := EpicConcurrencyAgent new.
	agent startConcurrentInLoop: [nil].
	
	self assert: [agent isRunning].
	
	agent abort