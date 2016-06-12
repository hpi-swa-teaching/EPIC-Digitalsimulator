parsing
registerComponent: aComponent named: aString
	self componentMap
		at: aString
		put: aComponent