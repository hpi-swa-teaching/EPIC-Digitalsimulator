as yet unclassified
testTogglingStates
	self panel snapToGrid: true;
		assert: [self panel snapToGrid].
	self panel toggleSnapToGrid.
	self deny: [self panel snapToGrid].
	
	self deny: [self panel snapToGrid].
	self panel toggleAutoTesting;
		assert: [self panel autoTesting].