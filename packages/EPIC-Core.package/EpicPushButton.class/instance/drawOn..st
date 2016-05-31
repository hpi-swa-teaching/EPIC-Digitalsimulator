drawing
drawOn: aCanvas
	
	aCanvas fillRectangle:  self bounds color: self fillColor.
	aCanvas frameRectangle:  self bounds color: Color black.

	aCanvas 
		drawString: (self pressed ifTrue: ['-|¯|-' ] ifFalse: ['-|_|-' ])
		at: self center - (17@8).	
	