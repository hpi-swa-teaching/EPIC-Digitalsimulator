deletion
delete
	"self class decreaseCounter."
	self tunnelEnds copy do: [ :aTunnelEnd | 
		aTunnelEnd delete ].
	super delete