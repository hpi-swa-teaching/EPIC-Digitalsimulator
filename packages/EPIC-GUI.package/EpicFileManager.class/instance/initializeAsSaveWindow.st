initialization
initializeAsSaveWindow
	self 
		initializeFileChooser
		createSaveButtonPane;
		createSaveInputPane;
		createSaveWindowLayout;
		setDirectory: EpicFileManager defaultDirectory;
		activeFiletype: self filetypeSelectors keys first;
		open.