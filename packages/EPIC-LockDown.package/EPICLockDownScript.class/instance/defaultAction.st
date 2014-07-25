method-templates
defaultAction
	| aStream currentStackContent contentNumber |
	aStream := FileStream fileNamed: 'ErrorLog.txt'.
	aStream setToEnd.
	DateAndTime now printOn: aStream.
	':', String tab, self exception messageText, Character linefeed putOn: aStream.
	currentStackContent := self exception signalerContext.
	contentNumber := EPICLockDownScript debugStackTreshold.
	[(contentNumber > 0) & (currentStackContent notNil)] whileTrue:
		[String tab, currentStackContent, Character linefeed putOn: aStream.
		currentStackContent := currentStackContent sender.
		contentNumber := contentNumber - 1].
	Character linefeed putOn: aStream.
	aStream close.
	
	PopUpMenu inform: 'An Error occured :(', Character linefeed, 'The program will exit now!'.
	Smalltalk snapshot: false andQuit: true