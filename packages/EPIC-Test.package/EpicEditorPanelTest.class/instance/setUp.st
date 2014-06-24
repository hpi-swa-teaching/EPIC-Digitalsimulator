running
setUp
	| lockDownScript |
	self 
		createPanel;
		addComponents.
	lockDownScript := EPICLockDownScript new lockDown.
	lockDownScript program delete
	
	