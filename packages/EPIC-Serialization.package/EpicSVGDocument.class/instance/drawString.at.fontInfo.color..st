as yet unclassified
drawString: aString at: aPoint fontInfo: aFontInfo color: aColor

	| textElement |
	textElement := XMLElement named: self textElementName.
	textElement
		attributeAt: 'x' put: aPoint x asFloat asString;
		attributeAt: 'y' put: (aPoint y + aFontInfo second) asFloat asString;
		attributeAt: 'font-family' put: aFontInfo first;
		attributeAt: 'font-size' put: aFontInfo second asString;
		attributeAt: 'fill' put: aColor asHTMLColor;
		addContent: (EpicXMLStringNewlineNode string: aString).
		
	self targetElement addElement: textElement
	