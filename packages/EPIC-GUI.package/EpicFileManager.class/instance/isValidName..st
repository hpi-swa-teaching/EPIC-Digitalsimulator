namecheck
isValidName: aString
	^ aString notEmpty and: [ self nameRegex matches: aString ]