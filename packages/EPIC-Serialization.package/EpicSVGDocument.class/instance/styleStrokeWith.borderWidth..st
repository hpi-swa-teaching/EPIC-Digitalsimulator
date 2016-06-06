as yet unclassified
styleStrokeWith: aBorderColor borderWidth: aWidth

	aBorderColor isTranslucent
		ifTrue: [ ^ 'stroke:', aBorderColor asHTMLColor, ';stroke-opacity:', aBorderColor alpha asString, ';stroke-width:', aWidth asString ]
		ifFalse: [ ^ 'stroke:', aBorderColor asHTMLColor, ';stroke-width:', aWidth asString ]	