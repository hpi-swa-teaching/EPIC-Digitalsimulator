option menu
addCopyPasteItem: aMenu
	aMenu addLine.
	aMenu add: 'copy' translated action: #copySelectedComponents.
	aMenu add: 'cut' translated action: #cutSelectedComponents.
	aMenu add: 'paste' translated action: #pasteComponents.
	