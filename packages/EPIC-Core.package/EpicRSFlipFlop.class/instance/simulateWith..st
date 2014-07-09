simulation
simulateWith: inputValues
	inputValues first ifTrue: [ savedValue:= true. ].
	inputValues second ifTrue: [ savedValue := false. ].
	self outputPorts first setValue: savedValue.
	self outputPorts second setValue: savedValue not.