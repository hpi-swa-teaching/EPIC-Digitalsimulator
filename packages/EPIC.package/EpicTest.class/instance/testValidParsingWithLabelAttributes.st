serialization testing
testValidParsingWithLabelAttributes
	| document |
	document := XMLDOMParser parseDocumentFrom: self xmlWithoutLabelTags.
	
	self shouldnt: [ EpicCircuitXMLParser new parse: document ] raise: Error