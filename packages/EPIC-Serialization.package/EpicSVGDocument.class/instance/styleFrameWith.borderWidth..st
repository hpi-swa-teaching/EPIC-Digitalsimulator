as yet unclassified
styleFrameWith: aBorderColor borderWidth: aWidth

	^ 'stroke:', aBorderColor asHTMLColor,
		';stroke-width:', aWidth asString
		
	