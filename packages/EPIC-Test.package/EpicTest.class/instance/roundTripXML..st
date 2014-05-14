serialization testing
roundTripXML: firstXml
	| circuit |
	circuit := EpicCircuitXMLParser new parseStream: firstXml readStream.
	[ ^ circuit asXMLDocument asString ]
		ensure: [ circuit delete ]