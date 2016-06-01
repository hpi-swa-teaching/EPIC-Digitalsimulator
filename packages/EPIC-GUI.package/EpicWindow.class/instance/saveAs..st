input/output
saveAs: aFilePath
	(self editorPanel baseCircuit) 
		fullyQualifiedName: aFilePath name;
		filePath: aFilePath;
		save