panes
addSaveDirectoryPane
	| buttonsHeight inputHeight |
	buttonsHeight := self class buttonsHeight.
	inputHeight := self class inputHeight.
	
	^ { (self directoryPane).
		(0 @ 0 corner: 0.5 @ 1).
		(0 @ 0 corner: 0 @ ((buttonsHeight + inputHeight) negated)) }