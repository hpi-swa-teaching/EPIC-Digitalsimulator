as yet unclassified
styleFillWith: aFillColor

	aFillColor isTranslucent
		ifTrue: [ ^ 'fill:', aFillColor asHTMLColor, ';fill-opacity:', aFillColor alpha asString]
		ifFalse: [ ^ 'fill:', aFillColor asHTMLColor ]
	