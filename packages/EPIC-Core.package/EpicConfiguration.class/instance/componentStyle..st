accessing
componentStyle: aSymbol
	componentStyle := aSymbol.
	self triggerEvent: #stateChanged
	
