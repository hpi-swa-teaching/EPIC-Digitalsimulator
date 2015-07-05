deletion
delete

	super delete.
	self isDeleted ifFalse: [
		self 
			resetEndPortToDefault;
			unplugFromPorts;
			triggerEvent: #deleted]