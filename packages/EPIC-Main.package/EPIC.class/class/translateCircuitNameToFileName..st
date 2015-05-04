helper messages
translateCircuitNameToFileName: aCircuitName
	^ self componentStorePathName, 
		(aCircuitName copyReplaceAll: '.' with: FileDirectory slash),
		FileDirectory dot,
		'xml'