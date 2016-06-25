panes
addOpenFilePane
	| buttonsHeight |
	buttonsHeight := self class buttonsHeight.
	
	^ { 	(self filePane).
		(0.5 @ 0 corner: 1 @ 1).
		(0 @ 0 corner: 0 @ (buttonsHeight negated)) }