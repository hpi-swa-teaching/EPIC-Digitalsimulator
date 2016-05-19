as yet unclassified
testBasicSvgDocument

	| basicDocument |
	basicDocument := EpicSVGDocument new.
	basicDocument svgElement addElement: (XMLElement named: 'content').
	self assert: self basicSvgDocument equals: basicDocument asString