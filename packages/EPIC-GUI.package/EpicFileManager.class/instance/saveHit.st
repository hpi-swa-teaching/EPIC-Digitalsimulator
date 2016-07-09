services
saveHit
	ok := true.
	(self isValidName: self filenameInput contents)
	ifTrue: [ self class lastSelDir: directory.
		self saveFile.
		modalView delete]
	ifFalse: [ Beeper beep ]
		
		
