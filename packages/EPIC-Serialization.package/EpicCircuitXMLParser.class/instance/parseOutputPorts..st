parsing
parseOutputPorts: anXMLElement
	anXMLElement tagsNamed: #port do: [ :eachElement |
		self parsePort: eachElement using: EpicOutputPort new ]