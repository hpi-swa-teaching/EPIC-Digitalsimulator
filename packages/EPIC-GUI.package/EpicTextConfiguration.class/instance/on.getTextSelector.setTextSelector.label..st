as yet unclassified
on: anObject getTextSelector: aGetter setTextSelector: aSetter label: aString
	| textMorph |
	textMorph := PluggableTextMorph on: anObject text: aGetter accept: aSetter.
	textMorph
		acceptOnCR: true;
		vResizing: #rigid;
		"hResizing: #spaceFill;"
		height: (TextStyle defaultFont height + 6).
	
	self
		addMorphBack: (StringMorph contents: aString);
		addMorphBack: textMorph