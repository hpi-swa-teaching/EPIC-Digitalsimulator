deletion
delete
	super delete.
	self component ifNotNilDo: [:component | component delete].
	self removeConfiguration