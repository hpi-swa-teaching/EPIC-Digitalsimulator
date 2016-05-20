tab manipulation
addPanel: aPanel
	self activePanel: aPanel.
	self scrollPane scroller addMorph: aPanel.
	aPanel when: #componentGrabbed send: #notifyGrab: to: self