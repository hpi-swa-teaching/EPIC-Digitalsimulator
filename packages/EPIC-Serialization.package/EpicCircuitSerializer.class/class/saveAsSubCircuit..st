instance creation
saveAsSubCircuit: aCircuit
	| fileName |
	fileName := EPIC translateCircuitNameToFileName: aCircuit fullyQualifiedName.
	self ensureDirectoryExistence: fileName.
	(FileStream forceNewFileNamed: fileName) print: aCircuit asXMLDocument;
		 close