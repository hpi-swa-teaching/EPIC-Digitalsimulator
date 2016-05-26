accessing
drawPolygon: vertices color: aColor borderWidth: aWidth borderColor: aBorderColor

	| fillColor |
	fillColor := self shadowColor ifNil: [aColor].
	self
		preserveStateDuring: [:svgCanvas |
			svgCanvas
				outlinePolygon: vertices;
				setLinewidth: aWidth;
				fill: fillColor andStroke: ((aBorderColor isKindOf: Symbol)
					ifTrue: [Color gray]
					ifFalse: [aBorderColor])]