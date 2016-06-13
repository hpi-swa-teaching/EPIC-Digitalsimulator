deletion
delete
	(self tunnelOpening) ifNotNil: [
		self tunnelOpening deleteTunnelEnd: self].
	super delete