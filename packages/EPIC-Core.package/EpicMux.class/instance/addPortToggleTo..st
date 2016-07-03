option menu
addPortToggleTo: aMenu
	aMenu
		addLine;
		add: 'Toggle Port Count' translated action: [ self togglePortCount ]