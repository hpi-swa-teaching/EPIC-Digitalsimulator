as yet unclassified
testBasicSvgDocument

	self document svgElement addElement: (XMLElement named: 'content').
	self assert: self basicSvgDocument equals: self document asString