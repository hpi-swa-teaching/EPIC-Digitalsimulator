accessing
setOriginalLabel: aString
	self label = aString ifFalse: [ 
		self label: aString.
		self originalLabel: aString.
		self correspondingPort ifNotNilDo: [ :correspondingPort | 
			correspondingPort setLabel: aString 
		]
	]