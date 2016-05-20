helper messages
temporaryCircuitFile
	^DirectoryEntry 
		directory: (FileDirectory default on: 'epic\test')
		name: ('test.xml')
		creationTime: (nil)
		modificationTime: (nil)
		fileSize: (nil)