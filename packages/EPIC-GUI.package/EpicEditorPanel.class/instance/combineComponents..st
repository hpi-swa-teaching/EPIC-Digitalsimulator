combining
combineComponents: aCollectionOfComponents
	| blackbox |
	blackbox := EpicCustomCircuit new.	
	blackbox
		innerOrigin: self position;
		center: (self centerOfComponents: aCollectionOfComponents).
	aCollectionOfComponents do: [:eachComponent | 
		self removeComponent: eachComponent.
		blackbox addSubComponent: eachComponent 
	].
	blackbox 
		reconnectBorderCrossingWires.
	self 
		addComponent: blackbox;
		addWiresForCombinedComponent: blackbox.
	^ blackbox