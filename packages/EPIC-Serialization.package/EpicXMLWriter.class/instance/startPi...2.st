writing xml
startPi: identifier
	self stream
		nextPutAll: '<?';
		nextPutAll: identifier