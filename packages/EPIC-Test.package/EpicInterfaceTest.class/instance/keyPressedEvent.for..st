event generation
keyPressedEvent: aCharacter for: aHand
	| event |
	event := KeyboardEvent new.
	event 
		setType: #keystroke
		buttons: 0 
		position: aHand position
		keyValue: aCharacter 
		hand: aHand 
		stamp: Time millisecondClockValue.
	^ event