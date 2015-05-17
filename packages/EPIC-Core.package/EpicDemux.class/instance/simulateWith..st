simulation
simulateWith: inputValues
	1 to: (self outputPorts size) do: [:i |
		(self toInteger: self selectorPorts) = i ifTrue: [
			(self outputPorts at: i) setValue: self inputValues first]
		ifFalse: [
			(self outputPorts at: i) setValue: false]]