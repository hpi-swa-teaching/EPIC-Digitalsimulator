instance creation
containingCopyOf: aComponent
	^ self new
		adoptConfigurationFor: aComponent;
		setClonedComponent: aComponent;
		yourself