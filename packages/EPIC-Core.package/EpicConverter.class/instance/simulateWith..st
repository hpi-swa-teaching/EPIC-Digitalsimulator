simulation
simulateWith: inputValues

	self createConversionTable.
	1 to: (self outputPorts size) do: [ :i |
		(self outputPorts at: i) setValue: 
			((conversionTable at: 
				(self toInteger: inputValues reversed)) bitAt: ((self outputPorts size) - i + 1)) strictlyPositive]