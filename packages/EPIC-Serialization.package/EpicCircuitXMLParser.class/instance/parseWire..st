parsing
parseWire: anXMLElement
	| startPort targetPort wire |
	startPort := self extractPortFrom: anXMLElement prefixed: 'start'.
	targetPort := self extractPortFrom: anXMLElement prefixed: 'target'.
	wire := EpicWire from: startPort to: targetPort.
	self 
		parseKnots: (anXMLElement firstTagNamed: #knots) for: wire;
		triggerWireParsed: wire