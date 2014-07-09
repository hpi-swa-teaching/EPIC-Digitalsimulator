menu creation
createTestingMenu
	self testingMenu: EpicMenu new.
	^ self testingMenu 
		addUpdating: #getAutoTestingCaption target: self editorPanel action: #toggleAutoTesting;
		add: 'Set TestCases' target: self editorPanel selector: #setComponentTestCases;
		add: 'Run TestCases' target: self editorPanel selector: #runComponentTestCases;
		deactivateEntries: #(1);
		yourself.