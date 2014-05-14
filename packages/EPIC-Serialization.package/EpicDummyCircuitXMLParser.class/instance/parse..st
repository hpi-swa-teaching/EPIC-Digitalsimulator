parsing
parse: anXMLDocument
	self circuit xmlDocument: anXMLDocument.
	
	^ super parse: anXMLDocument