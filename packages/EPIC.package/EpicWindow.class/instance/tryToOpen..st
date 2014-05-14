input/output
tryToOpen: aFileName
	(FileStream isAFileNamed: aFileName)
		ifTrue: [ self openFileNamed: aFileName ]
		ifFalse: [ EPIC 
			displayError: 'EPIC Fail: File not found' 
			message: 'Could not find a circuit with the given name.' 
		]