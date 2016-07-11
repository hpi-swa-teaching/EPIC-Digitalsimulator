as yet unclassified
viewbox: aRectangle

	self svgElement
		attributeAt: 'viewBox' put:
			aRectangle left asFloat asString, ' ', aRectangle top asFloat asString,
			' ', aRectangle extent x asFloat asString, ' ', aRectangle extent y asFloat asString