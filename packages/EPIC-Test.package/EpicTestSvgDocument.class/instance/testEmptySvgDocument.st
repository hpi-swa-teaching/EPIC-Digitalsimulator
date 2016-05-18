as yet unclassified
testEmptySvgDocument

	| emptyDocument |
	emptyDocument := EpicSVGDocument new.
	emptyDocument svgElement addElement: (XMLElement named: 'content').
	self assert: self emptySvgDocument equals: emptyDocument asString