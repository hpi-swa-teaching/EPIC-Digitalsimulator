as yet unclassified
simulateWith: input
	self outputPorts first setValue: (input bitAt: 1) strictlyPositive.
	self outputPorts second setValue: (input bitAt: 2) strictlyPositive.
	self outputPorts third setValue: (input bitAt: 3) strictlyPositive.
	self outputPorts fourth setValue: (input bitAt: 4) strictlyPositive.