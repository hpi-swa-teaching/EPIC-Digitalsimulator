accessing
icon 
	(self name = #EpicHelp) ifTrue: [^ ImageReadWriter formFromFileNamed:  
		(FileDirectory uri: (EPIC resourceFilePath, 'icon.png')) fullName ].
	^nil
	