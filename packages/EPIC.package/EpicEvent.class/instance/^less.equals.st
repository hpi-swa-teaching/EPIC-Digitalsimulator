comparing
<= anEvent
	^ anEvent isWireEvent 
		ifTrue: [self timeStamp < anEvent timeStamp]
		ifFalse: [self timeStamp <= anEvent timeStamp]