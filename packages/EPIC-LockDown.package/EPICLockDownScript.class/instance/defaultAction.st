method-templates
defaultAction
	| aStream |
	aStream := FileStream fileNamed: 'ErrorLog.txt'.
	aStream setToEnd.
	DateAndTime now printOn: aStream.
	':', String tab, self exception description, Character linefeed putOn: aStream.
	aStream close.
	
	PopUpMenu inform: 'An Error occured :(', Character linefeed, 'The program will exit now!'.
	Smalltalk snapshot: false andQuit: true