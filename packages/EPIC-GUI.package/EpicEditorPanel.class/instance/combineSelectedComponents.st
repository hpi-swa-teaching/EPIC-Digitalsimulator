combining
combineSelectedComponents

	| combineCommand |
	combineCommand := self createCombineCommand.
	self commandExecutor executeCommand: combineCommand.
	^ combineCommand combinedCircuit