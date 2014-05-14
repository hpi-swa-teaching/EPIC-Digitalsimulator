instance creation
of: aWire into: aBoolean when: aTimeStamp
	^ self new
		wire: aWire;
		value: aBoolean;
		timeStamp: aTimeStamp;
		yourself