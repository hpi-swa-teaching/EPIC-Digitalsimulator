serialization
componentsAsXMLElement
	| components |
	components := XMLElement named: 'components'.
	
	self circuit subComponents do: [:eachComponent |
		components addElement: (self componentAsXMLElement: eachComponent)].
	
	^ components