running
addComponents
	
	1 to: self class initialComponentCount do: [ :i |
		self panel addComponent: self createTestComponent]