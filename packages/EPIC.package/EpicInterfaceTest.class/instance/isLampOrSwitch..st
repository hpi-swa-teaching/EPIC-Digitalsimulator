helper messages
isLampOrSwitch: aComponent
	^ (self isLamp: aComponent) or: [self isSwitch: aComponent]