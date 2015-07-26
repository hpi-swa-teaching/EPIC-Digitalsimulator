drawing
drawDINInputPortsOn: aCanvas

	self inputPorts do: [:eachPort |
		aCanvas 
			line: eachPort center 
			to: (self gateBoxDIN left) @ (eachPort center y)
			color: Color black]