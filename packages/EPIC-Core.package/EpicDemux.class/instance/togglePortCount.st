modify
togglePortCount
	"Cycle through SelectorPortCounts and set OutputPorts accordingly"
	| min max |
	min := self class minSelectorPorts.
	max := self class maxSelectorPorts.
	
	self portCounter: ((self portCounter + 1 - min) \\ (max - min + 1)) + min.
	
	