accessing
lazyInstanceDict
	self instanceDict ifNil: [
		self instanceDict: Dictionary new.
		self instanceDict at: nil put: self default
	].
	^ self instanceDict