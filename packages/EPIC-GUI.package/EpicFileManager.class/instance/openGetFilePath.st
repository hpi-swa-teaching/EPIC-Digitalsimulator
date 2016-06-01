open
openGetFilePath
	self  postOpen.
	self morphicView openInWorld.
	FileChooser modalLoopOn: self morphicView.
	
	^self getDirectoryEntry
		
	