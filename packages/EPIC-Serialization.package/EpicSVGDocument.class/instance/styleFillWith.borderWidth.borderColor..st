as yet unclassified
styleFillWith: aFillColor borderWidth: aWidth borderColor: aBorderColor

	| fillStyle strokeStyle |
	aFillColor isTranslucent
		ifTrue: [ fillStyle := 'fill:', aFillColor asHTMLColor, ';fill-opacity:', aFillColor alpha asString ]
		ifFalse: [ fillStyle := 'fill:', aFillColor asHTMLColor ].
	aBorderColor isTranslucent
		ifTrue: [ strokeStyle := 'stroke:', aBorderColor asHTMLColor, ';stroke-opacity:', aBorderColor alpha asString, ';stroke-width:', aWidth asString ]
		ifFalse: [ strokeStyle := 'stroke:', aBorderColor asHTMLColor, ';stroke-width:', aWidth asString ].
	^ fillStyle, ';', strokeStyle
		
	