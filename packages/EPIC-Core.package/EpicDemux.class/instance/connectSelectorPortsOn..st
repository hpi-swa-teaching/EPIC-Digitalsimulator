drawing
connectSelectorPortsOn: aCanvas
	
	| xyratio |
	self selectorPorts do: [:eachPort |
		xyratio := (self gateBoxANSI right - eachPort center x) / (self gateBoxANSI width).
		aCanvas
			line: eachPort center
			to: (eachPort center x) @ (self gateBoxANSI bottom - (self gateBoxANSI height / 3 * xyratio) rounded)
			color: Color black]