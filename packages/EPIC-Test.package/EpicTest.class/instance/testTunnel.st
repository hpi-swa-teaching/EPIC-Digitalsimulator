component testing
testTunnel
	| tunnelOpening tunnelEnd |
	tunnelOpening := EpicTunnelOpening new.
	tunnelEnd := tunnelOpening createTunnelEnd.
	
	tunnelOpening inputPorts first setValue: false.
	tunnelOpening simulate.
	self assert: [tunnelEnd outputValues first = false].
	
	tunnelOpening inputPorts first setValue: true.
	tunnelOpening simulate.
	self assert: [tunnelEnd outputValues first = true].
	