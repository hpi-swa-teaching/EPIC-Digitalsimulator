option menu
openHelpOnSelectedComponents
	
	| selectedComponents helpBrowser |
	selectedComponents := self selectedComponents.
	helpBrowser := EPIC help.
	
	(selectedComponents size > 1) & (selectedComponents size > 0)
		ifTrue: [ ^ self ].
	helpBrowser searchTerm: selectedComponents first componentName