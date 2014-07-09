method-templates
defaultAction
	| aStream currentStackLevel x |
	aStream := FileStream fileNamed: 'ErrorLog.txt'.
	aStream setToEnd.
	DateAndTime now printOn: aStream.
	':', String tab, self exception messageText, Character linefeed putOn: aStream.
	currentStackLevel := self exception signalerContext.
	x := EPICLockDownScript debugStackTreshold.
	[(x > 0) & (currentStackLevel notNil)] whileTrue:
		[String tab, currentStackLevel, Character linefeed putOn: aStream.
		currentStackLevel := currentStackLevel sender.
		x := x - 1].
	Character linefeed putOn: aStream.
	aStream close.
	
	PopUpMenu inform: 'An Error occured :(', Character linefeed, 'The program will exit now!'.
	Smalltalk snapshot: false andQuit: true