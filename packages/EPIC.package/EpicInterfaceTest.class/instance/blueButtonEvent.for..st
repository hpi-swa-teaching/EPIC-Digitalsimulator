event generation
blueButtonEvent: aSymbol for: aHand
	| event |
	event := MouseButtonEvent new.
	event 
		setType: aSymbol
		position: aHand position 
		which: MouseEvent blueButton
		buttons: 0 
		hand: aHand 
		stamp: Time millisecondClockValue.
	^ event