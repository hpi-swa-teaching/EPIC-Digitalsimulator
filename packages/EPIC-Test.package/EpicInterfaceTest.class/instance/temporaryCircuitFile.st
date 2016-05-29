helper messages
temporaryCircuitFile
	^DirectoryEntry 
		directory: (FileDirectory default on: 'epic', FileDirectory slash, 'test')
		name: ('test.xml')
		creationTime: (nil)
		modificationTime: (nil)
		fileSize: (nil)