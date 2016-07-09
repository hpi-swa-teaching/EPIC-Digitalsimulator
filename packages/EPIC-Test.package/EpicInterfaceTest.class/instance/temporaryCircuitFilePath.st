helper messages
temporaryCircuitFilePath
	| slash directory |
	slash := FileDirectory slash.
	directory := FileDirectory default directoryNamed: 'epic', slash, 'test', slash.
	
	directory assureExistence.
	^ (directory fullNameFor: 'test.xml')