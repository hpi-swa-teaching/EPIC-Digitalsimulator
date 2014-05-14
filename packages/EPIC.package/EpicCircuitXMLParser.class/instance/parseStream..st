parsing
parseStream: aStream	
	^ self parse: (XMLDOMParser parseDocumentFrom: aStream)