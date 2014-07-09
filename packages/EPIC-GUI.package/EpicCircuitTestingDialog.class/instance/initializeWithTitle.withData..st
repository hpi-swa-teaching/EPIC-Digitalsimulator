as yet unclassified
initializeWithTitle: aTitleString withData: aCollection
	self
		buttons: {
			self createOkButton: 'Ok'.
			self createCancelButton: 'Cancel'};
		contentMorph: (self createTableFor: aCollection);
		
		"(self createCol: {
			(self createLabel: aLabelString) hResizing: #spaceFill.
			self createTextInput});"
		model: contents;
		addGrips;
		title: aTitleString.