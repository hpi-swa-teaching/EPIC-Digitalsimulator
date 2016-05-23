open
generateNewDirectoryEntry
	^DirectoryEntry 
		directory: (FileDirectory on: self class lastSelDir pathName)
		name: (self fileNameInput contents asString)
		creationTime: (TimeStamp current)
		modificationTime: (TimeStamp current)
		fileSize: (nil)
	
	
	