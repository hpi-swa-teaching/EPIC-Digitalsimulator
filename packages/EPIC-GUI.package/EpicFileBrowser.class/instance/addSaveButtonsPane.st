panes
addSaveButtonsPane
	| buttonsHeight |
	buttonsHeight := self class buttonsHeight.
	
	^ { (self buttonPane).
		(0 @ 1 corner: 1 @ 1).
		(0 @ (buttonsHeight negated) corner: 0 @ 0) }