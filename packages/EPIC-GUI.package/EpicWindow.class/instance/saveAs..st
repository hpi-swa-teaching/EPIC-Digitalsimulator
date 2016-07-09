input/output
saveAs: aFileStream
	(self editorPanel baseCircuit) 
		fullyQualifiedName: aFileStream baseName;
		saveTest: aFileStream