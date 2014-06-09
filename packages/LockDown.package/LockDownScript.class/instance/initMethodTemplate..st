deploying
initMethodTemplate: aSymbol

	| method programClass |
	programClass := self program class.
	method := (LockDownScript >>aSymbol ) copy.
	method methodClass: programClass.
	method selector: aSymbol.  .
	programClass methodDict at: aSymbol put: method.