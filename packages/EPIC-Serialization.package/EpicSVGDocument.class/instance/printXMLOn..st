printing
printXMLOn: writer
	writer
		xmlDeclaration: self xmlVersion encoding: self encoding;
		startDecl: 'DOCTYPE' named: self dtd;
		endDecl: 'DOCTYPE'.
	super printXMLOn: writer
		