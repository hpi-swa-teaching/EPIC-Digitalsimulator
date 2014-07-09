menu creation
getAutoTestingCaption
	^ self autoTesting
		ifTrue: 
			[^'disable autotesting' translated ] 
		ifFalse: 
			[^'enable autotesting' translated ]