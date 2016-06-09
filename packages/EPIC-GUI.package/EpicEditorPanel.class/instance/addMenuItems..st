option menu
addMenuItems: aMenu
	aMenu add: 'copy' translated action: #copySelectedComponents.
	aMenu add: 'cut' translated action: #cutSelectedComponents.
	aMenu add: 'paste' translated action: #pasteComponents.
	aMenu addLine.
	