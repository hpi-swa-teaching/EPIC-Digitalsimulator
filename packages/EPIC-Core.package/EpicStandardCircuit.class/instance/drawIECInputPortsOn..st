drawing
drawIECInputPortsOn: aCanvas

	self inputPorts do: [:eachPort |
		aCanvas 
			line: eachPort center 
			to: (self gateBoxIEC left) @ (eachPort center y)
			color: Color black]