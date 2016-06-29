event handling
customComponents
	| dir fileNames |
	dir := FileDirectory default directoryNamed: EPIC componentStorePathName.
	
	fileNames := dir fileNames copy select: [ :eachFileName | eachFileName endsWithAnyOf: self validXmlSuffixes ].
	^ fileNames collect: [:eachFileName |
		dir fileNamed: eachFileName do: [:aStream | 
			EpicDummyCircuitXMLParser new parseStream: aStream
		]		
	]