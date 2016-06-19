serialization
deleteXmlFile
	| fileName |
	 fileName := EPIC translateCircuitNameToFileName: self fullyQualifiedName.
	FileDirectory default deleteFileNamed: fileName