drawing
connectInputPortsOn: aCanvas
	
	self inputPorts do: [:eachPort |
		aCanvas 
			line: eachPort center 
			to: (self gateBoxANSI left) @ (eachPort center y)
			color: Color black]
