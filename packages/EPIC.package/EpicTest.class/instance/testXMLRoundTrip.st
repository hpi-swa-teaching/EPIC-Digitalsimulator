serialization testing
testXMLRoundTrip
	| circuit xml1 xml2|
	circuit := self createComplexCircuit.
	
	xml1 := circuit asXMLDocument asString.	
	xml2 := self roundTripXML: xml1.
	
	circuit delete.
	self assert: [xml1 = xml2]