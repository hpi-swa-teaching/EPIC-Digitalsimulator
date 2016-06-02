accessing
drawString: aString from: firstIndex to: lastIndex at: aPoint font: fontOrNil color: aColor

	| fillColor fontInfo font |
	fillColor := self shadowColor ifNil: [aColor].
	font := fontOrNil ifNil: [TextStyle defaultFont].
	fontInfo := {self svgFontFamilyNameFor: font . font pointSize} asOrderedCollection.
	self target
		drawString: (aString asString copyFrom: firstIndex to: lastIndex)
		at: aPoint
		fontInfo: fontInfo
		color: fillColor