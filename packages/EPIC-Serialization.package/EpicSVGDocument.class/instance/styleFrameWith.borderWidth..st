as yet unclassified
styleFrameWith: aBorderColor borderWidth: aWidth

	| fillStyle strokeStyle |
	fillStyle := 'fill-opacity:0.0'.
	aBorderColor isTranslucent
		ifTrue: [ strokeStyle := 'stroke:', aBorderColor asHTMLColor, ';stroke-opacity:', aBorderColor alpha asString, ';stroke-width:', aWidth asString ]
		ifFalse: [ strokeStyle := 'stroke:', aBorderColor asHTMLColor, ';stroke-width:', aWidth asString ].
	
	^ fillStyle, ';', strokeStyle
		
	