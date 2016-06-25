filename
getOpenFilePath
	^ (self new
		initializeAsOpenWindow;
		setSuffixes: {'xml'};
		setDirectory: (FileDirectory default directoryNamed: self defaultDirectory);
		openGetFilePath)
			ifNotNilDo: [ :file | file ]