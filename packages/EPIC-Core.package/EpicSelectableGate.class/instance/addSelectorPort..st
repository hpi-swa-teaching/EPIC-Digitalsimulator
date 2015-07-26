accessing ports
addSelectorPort: aPort

	self privateAddPort: aPort.
	aPort when: #valueChanged send: #simulateChangeOf: to: self with: aPort.
	self selectorPorts add: aPort.
	self reLayoutPorts 