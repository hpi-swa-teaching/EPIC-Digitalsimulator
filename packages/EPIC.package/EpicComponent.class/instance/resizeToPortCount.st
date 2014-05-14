port layout
resizeToPortCount
	| maxPortCount oldCenter newHeight |
	maxPortCount := self inputPorts size max: self outputPorts size.
	oldCenter := self center.
	newHeight := maxPortCount - 2 * EpicPort portSize x + self initialHeight.
	self height: (newHeight max: self initialHeight). 
	self center: oldCenter.