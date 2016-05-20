tab manipulation
removePanel: aPanel
	self scrollPane scroller removeMorph: aPanel.
	aPanel removeActionsWithReceiver: self
		