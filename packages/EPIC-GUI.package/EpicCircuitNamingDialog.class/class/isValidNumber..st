helper messages
isValidNumber: aString
	 ^ aString isNil or: [self numberRegex matches: aString]