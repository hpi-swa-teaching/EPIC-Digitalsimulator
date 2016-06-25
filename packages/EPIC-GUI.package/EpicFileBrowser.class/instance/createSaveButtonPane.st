ui creation
createSaveButtonPane
	"Create buttons suitable for a SystemWindow file chooser."

	self optionalButtonSpecs: self serviceSaveAndCancel.
	buttonPane := self optionalButtonRow.
	okButton := buttonPane firstSubmorph.
	cancelButton := buttonPane firstSubmorph.
	^buttonPane