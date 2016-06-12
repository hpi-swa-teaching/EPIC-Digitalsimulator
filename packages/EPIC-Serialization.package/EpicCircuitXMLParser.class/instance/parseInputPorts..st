parsing
parseInputPorts: anXMLElement
	anXMLElement tagsNamed: #port do: [ :eachElement |
		self parsePort: eachElement using: EpicInputPort new ]