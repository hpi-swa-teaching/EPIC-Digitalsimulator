simulation
setOutputValues
	1 to: 4 do: [:i |
		(self outputPorts at: i) setValue: (self state at: i)]