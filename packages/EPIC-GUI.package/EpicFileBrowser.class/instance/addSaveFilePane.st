panes
addSaveFilePane
	| buttonsHeight inputHeight |
	buttonsHeight := self class buttonsHeight.
	inputHeight := self class inputHeight.
	
	^ { (self filePane).
		(0.5 @ 0 corner: 1 @ 1).
		(0 @ 0 corner: 0 @ ((buttonsHeight + inputHeight) negated)) }