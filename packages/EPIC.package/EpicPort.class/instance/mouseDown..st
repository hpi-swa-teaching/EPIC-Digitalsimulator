event handling
mouseDown: evt
	"Overridden to not suppress #yellowButtonActivity for 'specific' event handlers"
	self eventHandler
		ifNotNil: [self eventHandler mouseDown: evt fromMorph: self]