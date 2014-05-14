tab manipulation
addPanel: aPanel
	self activePanel: aPanel;
		addMorph: aPanel fullFrame: self panelFrame.
	aPanel when: #componentGrabbed send: #notifyGrab: to: self
		