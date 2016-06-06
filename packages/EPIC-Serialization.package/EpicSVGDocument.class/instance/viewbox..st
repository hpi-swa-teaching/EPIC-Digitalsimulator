as yet unclassified
viewbox: aRectangle

	self svgElement
		attributeAt: 'viewBox' put:
			aRectangle left asString, ' ', aRectangle top asString,
			' ', aRectangle extent x asString, ' ', aRectangle extent y asString