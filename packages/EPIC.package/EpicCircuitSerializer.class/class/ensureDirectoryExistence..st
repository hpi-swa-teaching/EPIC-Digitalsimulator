helper messages
ensureDirectoryExistence: aFileName
	(FileDirectory default directoryNamed: (FileDirectory dirPathFor: aFileName))
		assureExistence