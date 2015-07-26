command handling
createCombineCommand
	"Erstellt combine command aus der aktuellen Auswahl"
	^ (EpicCombineCommand newFor: self) 
		components: self selectedComponents;
		wires: self selectedWires;
		yourself