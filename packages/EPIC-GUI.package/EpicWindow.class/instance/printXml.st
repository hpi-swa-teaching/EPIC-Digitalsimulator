Xml menu
printXml
	| window position xml |
	xml := TextStream on: (Text new).
	(self editorPanel baseCircuit asXMLDocument) printOn: xml.
	window := UIManager default
		edit: xml contents
		label: 'Xml'.
	position := self position + ((self extent - window extent) / 2).
	window position: position. 