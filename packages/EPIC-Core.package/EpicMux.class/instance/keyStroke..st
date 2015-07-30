modify
keyStroke: anEvent

	(anEvent keyCharacter = $m) ifTrue: [
	 	self changePortCount].
	(anEvent keyCharacter = Character delete) ifTrue: [
		self  delete]
