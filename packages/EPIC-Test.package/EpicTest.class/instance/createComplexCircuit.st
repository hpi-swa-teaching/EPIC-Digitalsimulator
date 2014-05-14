serialization testing
createComplexCircuit
	| circuit lamp or not1 not2 xnor switch clock|
	circuit := EpicCircuit new.
	lamp := EpicLamp new.
	or := EpicOr new.
	not1 := EpicNot new.
	not2 := EpicNot new.
	xnor := EpicXnor new.
	switch := EpicSwitch new.
	clock := EpicClock new.
	
	circuit 
		addSubComponent: lamp;
		addSubComponent: or;
		addSubComponent: not1;
		addSubComponent: not2;
		addSubComponent: xnor;
		addSubComponent: switch;
		addSubComponent: clock.
	
	EpicWire 
		from: clock outputPorts first to: not1 inputPorts first;
		from: switch outputPorts first to: xnor inputPorts first;
		from: not1 outputPorts first to: or inputPorts first;
		from: xnor outputPorts first to: or inputPorts second;
		from: or outputPorts first to: not2 inputPorts first;
		from: not2 outputPorts first to: xnor inputPorts second;
		from: or outputPorts first to: lamp inputPorts first.
	
	^ circuit
	