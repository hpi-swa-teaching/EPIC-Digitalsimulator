instance creation
of: aPort into: aBoolean when: aTimeStamp
	^ self new
		port: aPort;
		value: aBoolean;
		timeStamp: aTimeStamp;
		yourself