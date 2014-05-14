printing
printOn: aStream
	self printXMLOn: (EpicXMLWriter on: aStream)