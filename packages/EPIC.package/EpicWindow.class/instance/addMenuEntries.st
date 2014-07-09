menu creation
addMenuEntries
	self menuBar
		add: 'File' subMenu: self createFileMenu;
		add: 'Edit' subMenu: self createEditMenu;
		add: 'Settings' subMenu: self createSettingsMenu;
		add: 'Simulation' subMenu: self createSimulationMenu;
		add: 'Testing' subMenu: self createTestingMenu;
		add: 'Xml' subMenu: self createXmlMenu;
		add: 'Help' subMenu: self createHelpMenu
		