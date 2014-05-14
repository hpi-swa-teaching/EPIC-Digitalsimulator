event registration
registerPortEvents
	(self portHandler)
		on: #startDrag send: #startDrag:onPort: to: self;
		on: #mouseUp send: #mouseUp:onPort: to: self;
		on: #doubleClick send: #doubleClick:onPort: to: self