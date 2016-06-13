deletion
delete
	self tunnelOpening ifNotNilDo: [
		self tunnelOpening deleteTunnelEnd: self].
	super delete