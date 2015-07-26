command handling
createDeleteCommand
	"Erstellt delete command aus der aktuellen Auswahl"
	^ (EpicDeleteCommand newFor: self) 
		components: self selectedComponents;
		wires: self selectedWires;
		yourself