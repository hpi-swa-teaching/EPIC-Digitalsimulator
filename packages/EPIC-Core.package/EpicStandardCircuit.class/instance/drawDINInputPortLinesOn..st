drawing
drawDINInputPortLinesOn: aCanvas
	self inputPorts do: [:eachPort |
		aCanvas 
			line: eachPort center 
			to: (self gateBoxDIN left + 18) @ (eachPort center y)
			color: Color black
	]