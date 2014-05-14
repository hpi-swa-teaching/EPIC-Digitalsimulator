initialization
initialize
	super initialize.
	self 	
		layoutPolicy: ProportionalLayout new;
		color: Color orange lighter;
		createNavigationBar;
		createEditorPanel;
		connectNavigationBar