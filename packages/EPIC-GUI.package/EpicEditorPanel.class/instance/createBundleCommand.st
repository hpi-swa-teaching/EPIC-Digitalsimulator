command handling
createBundleCommand
	"Creates bundle command from the current selection."
	^ (EpicBundleCommand newFor: self) 
		wires: self selectedWires;
		yourself