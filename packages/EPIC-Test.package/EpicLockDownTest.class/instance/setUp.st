running
setUp
	| lockDownScript |
	lockDownScript := LockDownScript new.
	lockDownScript lockDown.
	self window: lockDownScript program