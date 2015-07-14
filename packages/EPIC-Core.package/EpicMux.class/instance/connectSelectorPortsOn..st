drawing
connectSelectorPortsOn: aCanvas

	| xyratio |
	self selectorPorts do: [:eachPort |
		xyratio := (self gateBoxANSI left - eachPort center x) / (self gateBoxANSI width).
		aCanvas
			line: eachPort center
			to: (eachPort center x) @ (self gateBoxANSI bottom + (self gateBoxANSI extent y / 3 * xyratio) rounded)
			color: Color black]