initialization
initialize
	super initialize.
	self
		currentIndent: 0;
		indentString: (String with: Character tab)