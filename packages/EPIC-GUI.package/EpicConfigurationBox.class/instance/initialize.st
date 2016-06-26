accessing
initialize
	super initialize.
	self scroller
		on: #mouseEnter send: #value: 
			to: [:event | event hand newKeyboardFocus: self scroller];
		on: #keyStroke send: #keyPressed: to: self.