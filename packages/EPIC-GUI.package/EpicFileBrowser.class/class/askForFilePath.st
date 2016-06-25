filename
askForFilePath
	^(self new
		initializeAsSaveWindow;
		setDirectory: (FileDirectory default directoryNamed: self defaultDirectory);
		openGetFilePath)
			ifNotNilDo: [ :filePath | filePath ]