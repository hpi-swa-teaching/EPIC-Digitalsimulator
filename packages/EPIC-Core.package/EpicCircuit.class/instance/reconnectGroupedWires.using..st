combining
reconnectGroupedWires: aDictionaryOfPortsAndWires using: aPortClass
	| newPort |
	(aDictionaryOfPortsAndWires associations sorted: [:association1 :association2 |
		association1 key position y <= (association2 key position y)
	]) do: [:eachAssociation |
		newPort := aPortClass new.
		self addPort: newPort.
		eachAssociation value do: [:eachWire | self reconnect: eachWire using: newPort]
	]