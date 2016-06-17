initialization
setInitialNumber
	self class tunnelCounter ifNil: [
		self class resetCounter].
	self number: self class tunnelCounter.
	self class increaseCounter.