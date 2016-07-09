accessing
saveFilePath
	^ self class lastSelDir pathName, FileDirectory slash, 
		self filenameInput contents, '.', self activeFiletype