as yet unclassified
printOn: stream
	
	| writer |
	writer := EpicXMLWriter on: stream.
	self printXMLOn: writer.
	writer flush