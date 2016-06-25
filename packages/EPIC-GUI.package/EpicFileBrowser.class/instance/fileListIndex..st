file list
fileListIndex: anInteger
	"Select the file name and update filenameInput to allow easy change of names"

	super fileListIndex: anInteger.
	(self fileName isNil)
	ifFalse: [ 
		self fileNameInput 
			newContents: self fileName ]
	