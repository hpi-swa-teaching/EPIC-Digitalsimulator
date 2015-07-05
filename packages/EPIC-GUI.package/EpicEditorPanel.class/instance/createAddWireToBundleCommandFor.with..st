command handling
createAddWireToBundleCommandFor: aBundle with: someWires

	^ (EpicAddWiresToBundleCommand newFor: self) 
		wires: someWires;
		bundledWire: aBundle;
		yourself