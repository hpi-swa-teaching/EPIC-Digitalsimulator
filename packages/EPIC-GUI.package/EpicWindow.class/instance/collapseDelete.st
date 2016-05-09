deletion
collapseDelete
	self simulator ifNotNilDo: [ :simulator | simulator stopSimulation ].
	super delete