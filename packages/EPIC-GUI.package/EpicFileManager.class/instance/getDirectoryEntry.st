open
getDirectoryEntry
	| dirName fileName |
	dirName := self class lastSelDir pathName, FileDirectory slash.
	fileName := self fileNameInput contents.
	
	(dirName, fileName) asDirectoryEntry 
	ifNil: [ ^self generateNewDirectoryEntry ]
	ifNotNilDo: [ :entry | ^entry ]
	
	
	