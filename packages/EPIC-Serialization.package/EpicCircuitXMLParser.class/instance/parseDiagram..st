parsing
parseDiagram: anXMLElement
	| tunnelAssociations |
	self
		parseComponents: (anXMLElement firstTagNamed: #components);
		parseConnections: (anXMLElement firstTagNamed: #connections).
	"nil check needed, because files saved with old versions may not contain tunnel info"
	tunnelAssociations := anXMLElement firstTagNamed: #tunnelAssociations.
	tunnelAssociations ifNotNil: [ self parseTunnelAssociations: tunnelAssociations ]