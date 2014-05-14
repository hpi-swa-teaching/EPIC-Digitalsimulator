port & wire testing
testWireAnchorMove
	| wire anchor |
	wire := self getWire.
	
	wire
		addAnchorPoint: 2@2.
		
	wire moveAnchorPointsBy: 0@2.
	anchor := (wire getAnchorByPoint: 2@4).
	self
		assert: (anchor point = (2@4)).