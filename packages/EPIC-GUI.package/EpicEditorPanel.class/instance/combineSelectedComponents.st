combining
combineSelectedComponents
	| blackbox |
	blackbox := EpicCircuit new.	
	blackbox
		innerOrigin: self position;
		center: self centerOfSelectedComponents.
	self selectedComponents do: [:eachComponent | 
		self removeComponent: eachComponent.
		blackbox addSubComponent: eachComponent 
	].
	blackbox 
		reconnectBorderCrossingWires.
	self 
		addComponent: blackbox;
		addWiresForCombinedComponent: blackbox.
	^ blackbox