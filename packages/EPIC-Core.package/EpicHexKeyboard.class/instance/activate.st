as yet unclassified
activate
	|morph|
	morph:= self morphsAt: self cursorPoint.
	self simulateWith: (morph first) value.