component testing deprecated
outputValuesAsCollection
	| values |
	values := OrderedCollection new.
	self outputPorts do: [ :eachPort | values add: eachPort value].
	^values