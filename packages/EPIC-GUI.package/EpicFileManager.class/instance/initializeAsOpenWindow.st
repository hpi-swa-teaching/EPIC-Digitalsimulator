initialization
initializeAsOpenWindow
	self 
		initializeFileChooser
		createOpenButtonPane;
		createOpenWindowLayout;
		setSuffixes: self filetypeSelectors keys;
		setDirectory: EpicFileManager defaultDirectory;
		activeFiletype: self filetypeSelectors keys first;
		open.