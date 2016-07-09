services
openHit
	ok := true.
	(self getSelectedFile)
	ifNil: [ Beeper beep ]
	ifNotNil: [ 
		self class lastSelDir: directory.
		self openFile.
		modalView delete ]