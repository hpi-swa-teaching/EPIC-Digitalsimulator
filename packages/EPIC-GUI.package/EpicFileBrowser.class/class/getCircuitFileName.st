file names
getCircuitFileName
	^ (self new
		initializeAsSystemWindowWithCaptionPane;
		setCaption: 'Select a circuit XML-File';
		setSuffixes: {'xml'};
		setDirectory: (FileDirectory default directoryNamed: self componentDirectoryName);
		open)
			ifNotNilDo: [ :file | file name ]