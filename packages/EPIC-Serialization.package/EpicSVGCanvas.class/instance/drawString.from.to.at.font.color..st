accessing
drawString: aString from: firstIndex to: lastIndex at: aPoint font: fontOrNil color: aColor

	| fillColor font |
	fillColor := self shadowColor ifNil: [aColor].
	font := self svgFontFor: (fontOrNil ifNil: [self defaultFont]).
	self target
		drawString: (aString asString copyFrom: firstIndex to: lastIndex)
		at: aPoint
		font: font
		color: fillColor