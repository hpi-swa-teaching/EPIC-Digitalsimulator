command handling
createAddTunnelEndCommand
	"Creates delete command from the current selection."
	^ (EpicAddTunnelEndCommand newFor: self) 
		components: self selectedComponents;
		yourself