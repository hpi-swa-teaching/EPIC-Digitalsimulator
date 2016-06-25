ui creation
createSaveWindowLayout
	"Create a standard OpenWindow Layout for the file chooser."

	self addFullPanesTo: self morphicView
		from: {
				self addSaveDirectoryPane.
				self addSaveFilePane.
				self addSaveInputPane.
				self addSaveButtonsPane.
			}