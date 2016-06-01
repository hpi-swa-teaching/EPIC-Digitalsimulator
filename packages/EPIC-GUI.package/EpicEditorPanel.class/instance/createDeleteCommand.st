command handling
createDeleteCommand
	"Creates delete command from the current selection."
	^ (EpicDeleteCommand newFor: self) 
		components: self selectedComponents;
		wires: self selectedWires;
		yourself