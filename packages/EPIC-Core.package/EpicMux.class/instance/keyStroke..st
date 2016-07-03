modify
keyStroke: anEvent 
	
	(anEvent keyCharacter = $m) ifTrue: [
	 	self togglePortCount ].
	(anEvent keyCharacter = Character delete) ifTrue: [
		self  delete ]
