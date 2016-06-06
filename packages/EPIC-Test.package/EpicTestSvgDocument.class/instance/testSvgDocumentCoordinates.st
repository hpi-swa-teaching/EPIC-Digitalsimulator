as yet unclassified
testSvgDocumentCoordinates

	self document svgElement addElement: (XMLElement named: 'content').
	self document extent: 800@600.
	self document viewbox: (Rectangle origin: 100@150 extent: 800@600). 
	self assert: self svgDocumentCoordinatesTest equals: self document asString