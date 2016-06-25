component help
openHelpOnSelectedComponents
	| selectedComponents helpBrowser |
	selectedComponents := self selectedComponents.
	helpBrowser := EPIC help.
	
	(selectedComponents size > 1) | (selectedComponents size < 1)
		ifTrue: [ | helpTerm |
			helpTerm := self askForHelpTerm.
			helpTerm ifNotNil: [ helpBrowser searchTerm: helpTerm ] ]
		ifFalse: [ helpBrowser searchTerm: selectedComponents first componentName ]