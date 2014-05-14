layout
autoLayout
	self suppressRelayout ifFalse: 
	[
		self suppressRelayout: true;
			relayout;
			suppressRelayout: false		
	]