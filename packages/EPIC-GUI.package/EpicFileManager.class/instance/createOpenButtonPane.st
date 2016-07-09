ui creation
createOpenButtonPane
	self optionalButtonSpecs: self serviceOpenAndCancel.
	buttonPane := self optionalButtonRow.
	okButton := buttonPane firstSubmorph.
	cancelButton := buttonPane firstSubmorph.
	
	filenameInput := TextMorph new. 
	
	^buttonPane