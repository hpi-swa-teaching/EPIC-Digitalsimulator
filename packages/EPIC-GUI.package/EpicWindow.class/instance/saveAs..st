input/output
saveAs: aFileStream
	(self editorPanel circuit) 
		fullyQualifiedName: aFileStream baseName;
		save: aFileStream