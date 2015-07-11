command handling
presumeAnchorMoveCommandFor: aWire

	| anchorMoveCommand |
	anchorMoveCommand := EpicAnchorMoveCommand newFor: aWire.
	anchorMoveCommand fetchWireAnchors.
	self commandExecutor presumedCommand: anchorMoveCommand