helper messages
isValidName: aString
	^ aString isNil or: [self nameRegex matches: aString]