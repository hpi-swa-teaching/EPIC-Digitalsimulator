running
setUp
	| lockDownScript |
		
	lockDownScript := LockDownScript new lockDown.
	lockDownScript program delete.