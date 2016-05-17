tab manipulation
addPanel: aPanel
	self activePanel: aPanel.
	self scrollPane scroller addMorph: aPanel.
	aPanel
		width: 275;
		height: 500.
	aPanel when: #componentGrabbed send: #notifyGrab: to: self
		