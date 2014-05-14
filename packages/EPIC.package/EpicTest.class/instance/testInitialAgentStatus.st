agent testing
testInitialAgentStatus
	| agent |
	agent := EpicConcurrencyAgent new.
	self assert: [agent isIdle].