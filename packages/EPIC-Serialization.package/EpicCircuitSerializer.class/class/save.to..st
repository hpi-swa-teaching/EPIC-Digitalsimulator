instance creation
save: aCircuit to: aFileStream
	aFileStream
		print: aCircuit asXMLDocument;
		close