drawing
drawDINCircledPlus: aCanvas
	aCanvas 
		line: self gateBoxDIN center - (3 @ 0)
		to: self gateBoxDIN center + (3 @ 0)
		color: Color black.
	aCanvas 
		line: self gateBoxDIN center - (0 @ 3)
		to: self gateBoxDIN center + (0 @ 3)
		color: Color black.
	aCanvas 
		frameOval: (Rectangle center: self gateBoxDIN center extent: 11 @ 11) 
		color: Color black