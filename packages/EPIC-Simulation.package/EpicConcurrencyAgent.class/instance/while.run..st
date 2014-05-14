scheduling
while: aConditionBlock run: aBlock
	[self canRun and: aConditionBlock] whileTrue: aBlock