running
setUp
	| lockDownScript |
	self 
		createPanel;
		addComponents.
	lockDownScript := EpicLockDownScript new lockDown.
	lockDownScript program delete
	
	