option menu
addDeleteItem: aMenu
	aMenu addLine.
	aMenu add: 'delete' translated action: #deleteSelectedComponents.
	