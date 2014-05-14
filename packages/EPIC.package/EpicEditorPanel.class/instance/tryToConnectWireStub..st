wiring
tryToConnectWireStub: anEvent
	self wireStub ifNotNilDo: [ :stub | 
		(self wireablePortUnderMouse: anEvent position)
			ifNotNilDo: [ :targetPort | 
				(stub canConnectTo: targetPort)
					ifTrue: [ 
						self addWire: (stub connectTo: targetPort).
						self removeWireStub 
					] 
			] 
	]