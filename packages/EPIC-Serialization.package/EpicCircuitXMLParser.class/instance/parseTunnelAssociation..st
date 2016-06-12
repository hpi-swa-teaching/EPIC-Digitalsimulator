parsing
parseTunnelAssociation: anXMLElement
	| source destination |
	source := self componentMap at: (anXMLElement attributeAt: #source).
	destination := self componentMap at: (anXMLElement attributeAt: #destination).
	source addTunnelEnd: destination.
	destination tunnelOpening: source