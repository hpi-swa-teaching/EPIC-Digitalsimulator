as yet unclassified
delete
	self tunnelEnds copy do: [ :aTunnelEnd | 
		aTunnelEnd delete ].
	super delete