component help
askForHelpTerm
	^ FillInTheBlankMorph
		request: 'Help for what?'
		initialAnswer: ''
		centerAt: ActiveHand cursorPoint inWorld: ActiveWorld
		onCancelReturn: nil
		acceptOnCR: true
		answerHeight: 25