panes
addSaveInputPane
	| buttonsHeight inputHeight |
	buttonsHeight := self class buttonsHeight.
	inputHeight := self class inputHeight.
	
	^ { (self inputPane).
		(0 @ 1 corner: 1 @ 1).
		(0 @ ((buttonsHeight + inputHeight) negated) corner: 0 @ (buttonsHeight negated)) }