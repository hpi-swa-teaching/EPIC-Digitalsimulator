running
setUp
	| lockDownScript |
		
	lockDownScript := EpicLockDownScript new lockDown.
	lockDownScript program delete.