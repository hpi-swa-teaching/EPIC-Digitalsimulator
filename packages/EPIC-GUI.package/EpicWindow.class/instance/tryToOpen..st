input/output
tryToOpen: aFilePath
	(FileStream isAFileNamed: aFilePath fullName)
		ifTrue: [ self openFileNamed: aFilePath fullName]
		ifFalse: [ EPIC 
			displayError: 'EPIC Fail: File not found' 
			message: 'Could not find a circuit with the given name.' 
		]