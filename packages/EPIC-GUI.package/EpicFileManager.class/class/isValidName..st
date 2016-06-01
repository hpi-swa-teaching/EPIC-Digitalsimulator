naming
isValidName: aString
	^ aString isEmpty or: [self nameRegex matches: aString]