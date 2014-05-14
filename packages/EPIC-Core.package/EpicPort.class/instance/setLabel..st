accessing
setLabel: aString
	self label = aString ifFalse: [ 
		self label: aString.
		self correspondingPort ifNotNilDo: [ :correspondingPort | 
			correspondingPort setLabel: aString 
		]
	]