simulation
delayedOutputPortSimulate: aPort
	aPort wires do: [:eachWire | self delayedWireSimulate: eachWire]