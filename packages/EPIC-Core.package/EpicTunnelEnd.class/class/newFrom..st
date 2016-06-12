as yet unclassified
newFrom: aTunnelOpening
	| tunnelEnd |
	tunnelEnd := self new.
	tunnelEnd tunnelOpening: aTunnelOpening.
	aTunnelOpening addTunnelEnd: tunnelEnd.
	^ tunnelEnd