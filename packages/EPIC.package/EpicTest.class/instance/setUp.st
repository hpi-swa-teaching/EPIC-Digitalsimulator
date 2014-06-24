running
setUp
	| lockDownScript |
		
	lockDownScript := EPICLockDownScript new lockDown.
	lockDownScript program delete.