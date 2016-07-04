initialization
initialize
	super initialize.
	self 	
		layoutPolicy: ProportionalLayout new;
		color: Color orange lighter;
		scrollPane: ScrollPane new;
		createNavigationBar;
		createEditorPanel;
		connectNavigationBar