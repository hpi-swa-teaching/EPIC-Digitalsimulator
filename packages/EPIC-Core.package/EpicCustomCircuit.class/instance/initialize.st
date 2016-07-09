initialization
initialize
	super initialize.
	self 
		innerOrigin: 0@0;
		subComponents: OrderedCollection new;
		innerInputPorts: OrderedCollection new;
		innerOutputPorts: OrderedCollection new;
		fullyQualifiedName: 'circuit';
		initialHeight: self height