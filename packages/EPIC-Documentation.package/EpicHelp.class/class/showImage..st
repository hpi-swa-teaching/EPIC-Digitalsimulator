as yet unclassified
showImage: aBaseName
	| form contents |
	form :=  ImageReadWriter formFromFileNamed:  
		(FileDirectory uri: (EPIC documentFilePath, aBaseName, '.png')) fullName.
	contents :=  (String with: Character cr) asText, 
				(Text string: ' '
				attribute: (TextFontReference toFont: 
					(FormSetFont new
						fromFormArray: (Array with: form)
						asciiStart: Character space asInteger
						ascent: form height))),
					(String with: Character cr) asText.
	^contents