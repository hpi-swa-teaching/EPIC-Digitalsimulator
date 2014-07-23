as yet unclassified
openInWorld
	"You can only resize this window after it is shown. Do this here."

	super openInWorld.
	self
		panelHeight: self class defaultHeight;
		width: self class defaultWidth.