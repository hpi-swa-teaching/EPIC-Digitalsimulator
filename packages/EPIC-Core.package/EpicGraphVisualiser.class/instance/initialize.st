as yet unclassified
initialize 
	self 
		graph: OrderedCollection new;
		agent: EpicConcurrencyAgent new.
	self graph addAll: #(false false false false false).
	super initialize.
	self lastUpdate: DateAndTime millisecondClockValue