initialization
on: anObject getTextSelector: aGetter setTextSelector: aSetter label: aString
	self
		target: anObject;
		getter: aGetter;
		setter: aSetter;
		label: aString;
		createView
	