component testing
testJunction
	self deny: EpicJunction new outputValues first.
	
	self simulate: EpicJunction new with: #(false) expecting: false.			
	self simulate: EpicJunction new with: #(true) expecting: true.
	