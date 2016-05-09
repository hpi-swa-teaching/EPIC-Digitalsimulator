menu creation
createHelpMenu
	^ (EpicMenu new)
		add: 'About'
			target: self
			selector: #openAboutWindow;
		yourself