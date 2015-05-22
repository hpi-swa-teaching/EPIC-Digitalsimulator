drawing
drawAsIECOn: aCanvas

	aCanvas 
		fillRectangle: self gateBoxIEC color: self fillColor;
		frameRectangle: self gateBoxIEC color: Color black.
		
	"aCanvas drawString: ((Unicode value: 0931) asString) at: self gateBoxIEC center - (6@8)."
	"aCanvas drawString: ((Unicode value: 0020) asString) at: self gateBoxIEC center - (6@8)."
	"aCanvas drawString: (String with: (Character value: ) at: self gateBoxIEC center- (6@8)."
	"aCanvas drawString: ((Unicode value: '0x000003A3') asString) at: self gateBoxIEC center - (6@8)."
	aCanvas drawString: 'Sum' at: self gateBoxIEC center - (13 @ 8).
	
	self inputPorts do: [:eachPort |
		aCanvas 
			line: eachPort center 
			to: (self gateBoxIEC left) @ (eachPort center y)
			color: Color black
	].
	
	aCanvas 
		line: self outputPorts first center 
		to: (self gateBoxIEC right) @ (self outputPorts first center y)
		color: Color black.

	aCanvas 
		line: self outputPorts second center 
		to: (self gateBoxIEC right) @ (self outputPorts second center y)
		color: Color black.