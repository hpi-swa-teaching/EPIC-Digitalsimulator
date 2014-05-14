drawing
drawOn: aCanvas
	| len |
	aCanvas fillOval:  self bounds color: self fillColor.
	aCanvas frameOval:  self bounds color: Color black.
	
	len := self width / 8 sqrt.
	aCanvas line: ((-1@ -1)*len + self center) to: ((1@1)*len + self center) color: Color black.
	aCanvas line: ((-1@ 1)*len + self center) to: ((1@ -1)*len + self center) color: Color black.
	