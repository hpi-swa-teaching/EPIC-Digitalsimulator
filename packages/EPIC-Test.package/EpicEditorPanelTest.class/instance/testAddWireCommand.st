command testing
testAddWireCommand
	
	| addWireCommand switch lamp |

	switch := EpicSwitch new.
	lamp := EpicLamp new.
	self panel addComponent: switch.
	self panel addComponent: lamp.
	addWireCommand := EpicAddWireCommand newFor: self panel.
	addWireCommand
		startPort: switch outputPorts first;
		endPort: lamp inputPorts first;
		anchorPoints: OrderedCollection new.
	self panel handleOutsideCommand: addWireCommand.
	
	self assert: (self panel wires size = 1).

	self panel commandExecutor undoLastCommand.

	self assert: (self panel wires size = 0)
	