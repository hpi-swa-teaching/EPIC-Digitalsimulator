help menu
openAboutWindow
	| window position |
	window := UIManager default
		edit: self aboutContent
		label: 'About'.
	position := self position + ((self extent - window extent) / 2).
	window position: position.