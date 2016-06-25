items
addCopyPasteItem
	self 
		addLine;
		add: 'copy' translated action: #copySelectedComponents;
		add: 'cut' translated action: #cutSelectedComponents;
		add: 'paste' translated action: #pasteComponents