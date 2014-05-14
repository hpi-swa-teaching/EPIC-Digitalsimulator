instance creation
withCaption: aString for: aPort
	^ self new 
		port: aPort;
		setCaption: aString;
		yourself