command handling
createBundleCommand
"Erstellt bundle command aus der aktuellen Auswahl"

	^ (EpicBundleCommand newFor: self) 
		wires: self selectedWires;
		yourself