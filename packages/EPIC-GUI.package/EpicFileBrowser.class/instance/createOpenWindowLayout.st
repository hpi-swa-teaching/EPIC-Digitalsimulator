ui creation
createOpenWindowLayout
	"Create a standard OpenWindow Layout for the file chooser."

	self addFullPanesTo: self morphicView
		from: {
				self addOpenFilePane.
				self addOpenDirectoryPane.
				self addOpenButtonPane.
			}