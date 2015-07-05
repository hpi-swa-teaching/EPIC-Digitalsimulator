command testing
testAddWireToBundleCommand
	
	| bundleCommand add1 add2 bundle wire |

	add1 := EpicHalfAdder new.
	add2 := EpicHalfAdder new.
	self panel addComponent: add1.
	self panel addComponent: add2.
	EpicWire from: add1 outputPorts first to: add2 inputPorts first.
	self panel selectComponents: self panel wires.
	bundleCommand := self panel createBundleCommand.
	self panel handleOutsideCommand: bundleCommand.
	bundle := bundleCommand bundledWire.
	wire := EpicWire from: add1 outputPorts second to: add2 inputPorts second.
	bundleCommand := self panel createAddWireToBundleCommandFor: bundle with: (OrderedCollection new add: wire; yourself).
	self panel handleOutsideCommand: bundleCommand.
	
	self assert: (bundle wires size = 2).

	self panel commandExecutor undoLastCommand.

	self assert: (bundle wires size = 1)

	
	