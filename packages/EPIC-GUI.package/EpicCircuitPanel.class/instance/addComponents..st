accessing
addComponents: aCollectionOfComponents
	aCollectionOfComponents do: [:eachComponent | 
		self addComponent: eachComponent 
	]