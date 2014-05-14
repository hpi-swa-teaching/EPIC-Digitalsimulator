deletion
delete
	super delete.
	self subComponents copy do: [:eachComponent | eachComponent delete].
	self innerPorts copy do: [:eachPort | eachPort delete]