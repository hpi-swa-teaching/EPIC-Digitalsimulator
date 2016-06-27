initialization
createView
	| textMorph |
	textMorph := PluggableTextMorph on: self text: #targetValue accept: #targetValue:.
	textMorph
		acceptOnCR: true;
		height: (TextStyle defaultFont height + 6);
		vResizing: #rigid;
		hResizing: #shrinkWrap;
		minimumWidth: 10;
		layoutInset: -15.
	
	self
		addMorphBack: (StringMorph contents: self label);
		addMorphBack: textMorph