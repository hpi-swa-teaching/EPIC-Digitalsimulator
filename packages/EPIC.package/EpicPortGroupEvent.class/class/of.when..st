instance creation
of: anAffectedComponent when: aTimeStamp
	^ self new
		affectedComponent: anAffectedComponent;
		portEvents: OrderedCollection new;
		timeStamp: aTimeStamp;
		yourself