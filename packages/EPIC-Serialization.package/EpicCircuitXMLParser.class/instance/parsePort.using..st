parsing
parsePort: anXMLElement using: aPort
	| innerPort |
	self circuit addPort: aPort.
	innerPort := self circuit correspondingInnerPort: aPort.
	(anXMLElement attributeAt: 'label')
		ifNotNilDo: [ :portLabel | aPort setLabel: portLabel ].
	self portMap 
		at: self circuitName, '.', (anXMLElement attributeAt: 'name')
		put: innerPort