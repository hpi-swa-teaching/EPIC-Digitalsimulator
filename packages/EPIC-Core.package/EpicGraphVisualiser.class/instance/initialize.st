as yet unclassified
initialize 
	self graph: OrderedCollection new.
	1 to: self class pointAmount do: [:i | self graph addLast: false].
	super initialize.