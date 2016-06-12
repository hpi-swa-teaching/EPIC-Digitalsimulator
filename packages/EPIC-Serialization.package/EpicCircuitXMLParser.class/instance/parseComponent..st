parsing
parseComponent: anXMLElement
	| name type position component |
	name := anXMLElement attributeAt: 'name'.
	type := anXMLElement attributeAt: 'type'.
	position := self parsePosition: anXMLElement.
	component := (self primitiveOfType: type)
		ifNil: [self parseSubCircuit: type]
		ifNotNilDo: [:primitive | primitive new].
	component position: position.
	self circuit addSubComponent: component.
	self 
		registerPortsOf: component named: name;
		registerComponent: component named: name;
		triggerComponentParsed: component