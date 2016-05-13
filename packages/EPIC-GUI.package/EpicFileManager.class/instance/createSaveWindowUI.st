ui creation
createSaveWindowUI
	"This method creates UI components and a layout that are suitable for a SystemWindow. Note that the order of the method calls are important."

	self
		createSystemWindowMorphicView;
		createSaveButtonPane;
		createDirectoryPane;
		createFilePane;
		createInputPane;
		createSaveWindowLayout;
		centerMorphicView.
	^self morphicView