simulation
keyStroke: anEvent 
	
	(anEvent keyCharacter = $m) ifTrue: [
	 	self changeDelayTime] .
	(anEvent keyCharacter = Character delete) ifTrue: [
		self  delete]