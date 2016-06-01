menu creation
createHelpMenu
	^ (EpicMenu new)
		add: 'About'
			target: self
			selector: #openAboutWindow;
		add: 'Documentation'
			target: EPIC
			selector: #help;
		yourself