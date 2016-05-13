file names
getSaveFilePath
	| filePath |
	filePath := self askForFilePath.
	[self isValidName: filePath name asString]
		whileFalse: [self displayError.
			filePath := self askForFilePath
		].
	(filePath name notEmpty)
	ifTrue: [^filePath ]
	 ifFalse: [^nil ]