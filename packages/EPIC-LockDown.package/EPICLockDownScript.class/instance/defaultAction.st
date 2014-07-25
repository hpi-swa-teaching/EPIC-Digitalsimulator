method-templates
defaultAction
	| aStream currentContent currentLevel |
	aStream := FileStream fileNamed: 'ErrorLog.txt'.
	aStream setToEnd.
	DateAndTime now printOn: aStream.
	':', String tab, self exception messageText, Character linefeed putOn: aStream.
	currentContent := self exception signalerContext.
	currentLevel := EpicLockDownScript debugStackTreshold.
	[(currentLevel > 0) & (currentContent notNil)] whileTrue:
		[String tab, currentContent, Character linefeed putOn: aStream.
		currentContent := currentContent sender.
		currentLevel := currentLevel - 1].
	Character linefeed putOn: aStream.
	aStream close.
	
	PopUpMenu inform: 'An Error occured :(', Character linefeed, 'The program will exit now!'.
	Smalltalk snapshot: false andQuit: true.