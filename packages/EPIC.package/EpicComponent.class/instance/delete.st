deletion
delete
	super delete.
	self deletePorts.
	self triggerEvent: #deleted