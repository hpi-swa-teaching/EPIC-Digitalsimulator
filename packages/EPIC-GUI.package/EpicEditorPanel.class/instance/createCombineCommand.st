command handling
createCombineCommand
	"Creates combine command from the current selection."
	^ (EpicCombineCommand newFor: self) 
		components: self selectedComponents;
		wires: self selectedWires;
		yourself