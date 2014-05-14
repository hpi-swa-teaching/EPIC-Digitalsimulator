event generation
moveEventFor: aHand to: aPosition
	| event |
	event := MouseMoveEvent new.
	event 
		setType: #mouseMove
		startPoint: aHand position
		endPoint: aPosition
		trail: nil
		buttons: 0 
		hand: aHand 
		stamp: Time millisecondClockValue.
	^ event