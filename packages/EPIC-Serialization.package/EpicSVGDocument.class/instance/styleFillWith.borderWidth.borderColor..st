as yet unclassified
styleFillWith: aFillColor borderWidth: aWidth borderColor: aBorderColor

	^ 'fill:', aFillColor asHTMLColor,
		';stroke:', aBorderColor asHTMLColor,
		';stroke-width:', aWidth asString
		
	