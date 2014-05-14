tab manipulation
removePanel: aPanel
	self removeMorph: aPanel.
	aPanel removeActionsWithReceiver: self
		