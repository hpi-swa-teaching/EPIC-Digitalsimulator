event handling
customComponents
	| dir |
	dir := FileDirectory default directoryNamed: EPIC componentStorePathName.
	
	^ dir fileNames	collect: [:eachFileName |
		dir fileNamed: eachFileName do: [:aStream | 
			EpicDummyCircuitXMLParser new parseStream: aStream
		]		
	]