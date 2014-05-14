serialization testing
testValidParsingWithoutLabelAttributes
	| document |
	document := XMLDOMParser parseDocumentFrom: self xmlWithLabelTags.
	
	self shouldnt: [ EpicCircuitXMLParser new parse: document ] raise: Error