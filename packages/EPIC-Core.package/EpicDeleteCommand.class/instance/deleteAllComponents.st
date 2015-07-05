execution
deleteAllComponents

	self bundles do: [ :eachBundle | eachBundle delete].
	self wires do: [ :eachWire | eachWire delete].
	self components do: [ :eachComponent | eachComponent delete]