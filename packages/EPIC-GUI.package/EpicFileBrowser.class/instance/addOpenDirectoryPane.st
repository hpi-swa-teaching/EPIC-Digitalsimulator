panes
addOpenDirectoryPane
	| buttonsHeight |
	buttonsHeight := self class buttonsHeight.
	
	^ { 	(self directoryPane).
		(0 @ 0 corner: 0.5 @ 1).
		(0 @ 0 corner: 0 @ (buttonsHeight negated)) }