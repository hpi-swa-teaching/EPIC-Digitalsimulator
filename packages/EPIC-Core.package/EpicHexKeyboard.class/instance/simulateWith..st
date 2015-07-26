simulation
simulateWith: input

	1 to: (self outputPorts size) do: [:i |
		(self outputPorts at: i) setValue: (input bitAt: i) strictlyPositive]