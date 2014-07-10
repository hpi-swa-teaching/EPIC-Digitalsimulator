event registration
registerPortEvents
	(self portHandler)
		on: #mouseEnter send: #highlight:Port: to: self;
		on: #mouseLeave send: #dehighlight:Port: to: self;
		
		on: #startDrag send: #startDrag:onPort: to: self;
		on: #mouseDown send: #mouseDown:onPort: to: self;
		on: #mouseUp send: #mouseUp:onPort: to: self;
		on: #doubleClick send: #doubleClick:onPort: to: self