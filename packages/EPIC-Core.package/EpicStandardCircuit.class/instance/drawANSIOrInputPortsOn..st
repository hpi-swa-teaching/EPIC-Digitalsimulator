drawing
drawANSIOrInputPortsOn: aCanvas
	self inputPorts
		do: [:eachPort | aCanvas
			line: eachPort center
			to: self gateBoxANSI left + 8 @ eachPort center y
			color: Color black].