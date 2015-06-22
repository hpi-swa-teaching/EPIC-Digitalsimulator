event handling
presumeMoveCommand

	| moveCommand |
	moveCommand := EpicMoveCommand newFor: self.
	moveCommand 
		components: self selectedComponents;
		wires: self selectedWires;
		fetchComponentPositions;
		fetchWireAnchors.
	self commandExecutor presumedCommand: moveCommand