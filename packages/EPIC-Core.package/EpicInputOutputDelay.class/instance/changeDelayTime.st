simulation
changeDelayTime 

	| reply |
	reply := FillInTheBlankMorph request: 'How long should the delay be in milliseconds?'.
	(reply asInteger isInteger) ifTrue: [
		self millisecondsToWait: reply asInteger]
 