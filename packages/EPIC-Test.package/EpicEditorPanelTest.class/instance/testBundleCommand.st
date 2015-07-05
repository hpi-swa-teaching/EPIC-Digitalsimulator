command testing
testBundleCommand
	
	| bundleCommand switch lamp |

	switch := EpicSwitch new.
	lamp := EpicLamp new.
	self panel addComponent: switch.
	self panel addComponent: lamp.
	EpicWire from: switch outputPorts first to: lamp inputPorts first.
	self panel selectComponents: self panel wires.
	bundleCommand := self panel createBundleCommand.
	self panel handleOutsideCommand: bundleCommand.
	
	self assert: ((self panel wires size = 2) and: ((self panel wires first isBundle) or: (self panel wires second isBundle))).

	self panel commandExecutor undoLastCommand.

	self assert: (self panel wires size = 1)

	
	