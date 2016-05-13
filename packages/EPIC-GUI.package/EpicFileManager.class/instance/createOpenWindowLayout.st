ui creation
createOpenWindowLayout
	"Create a standard OpenWindow Layout for the file chooser."

	| buttonsHeight |

	buttonsHeight := 33.

	self addFullPanesTo: self morphicView
		from: {
				{
					(self directoryPane).
					(0 @ 0 corner: 0.5 @ 1).
					(0 @ 0 corner: 0 @ (buttonsHeight negated))
				}.
				{
					(self filePane).
					(0.5 @ 0 corner: 1 @ 1).
					(0 @ 0 corner: 0 @ (buttonsHeight negated))
				}.
				{
					(self buttonPane).
					(0 @ 1 corner: 1 @ 1).
					(0 @ (buttonsHeight negated) corner: 0 @ 0)
				}.
			}