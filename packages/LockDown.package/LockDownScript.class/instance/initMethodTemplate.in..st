deploying
initMethodTemplate: aSymbol in: aClass

	| method | 
	method := (LockDownScript >>aSymbol ) copy.
	method methodClass: aClass.
	method selector: aSymbol.  
	aClass methodDict at: aSymbol put: method