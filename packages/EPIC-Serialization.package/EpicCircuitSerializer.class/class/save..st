instance creation
save: aCircuit
	self ensureDirectoryExistence: aCircuit filePath fullName.
	(FileStream forceNewFileNamed: aCircuit filePath fullName)
		print: aCircuit asXMLDocument;
		close