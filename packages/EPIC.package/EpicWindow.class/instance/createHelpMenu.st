menu creation
createHelpMenu
	^ (EpicMenu new)
		add: 'About'
			target: self
			selector: #notImplementedYet;
		yourself