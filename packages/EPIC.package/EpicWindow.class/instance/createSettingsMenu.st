menu creation
createSettingsMenu
	self settingsMenu: EpicMenu new.
	^ self settingsMenu
		add: self getSnapToGridLabel target: self selector: #toggleSnapToGrid;
		add: 'Enable EPIC Style' target: self selector: #componentStyle: argument: #epic;
		add: 'Enable IEC Style' target: self selector: #componentStyle: argument: #iec;
		add: 'Enable ANSI Style' target: self selector: #componentStyle: argument: #ansi;
		add: 'Enable DIN Style' target: self selector: #componentStyle: argument: #din;
		yourself