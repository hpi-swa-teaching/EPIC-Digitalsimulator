writing xml
startPI: identifier
	self stream
		nextPutAll: '<?';
		nextPutAll: identifier