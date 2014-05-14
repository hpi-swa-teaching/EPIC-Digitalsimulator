simulation
setValue: aBoolean
	aBoolean ifNil: [^ self error: 'is null'].
	(self value = aBoolean)
		ifFalse: [ 
			self value: aBoolean;
				triggerEvent: #valueChanged
		]