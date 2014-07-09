serialization testing
createTestableCircuit
	| circuit or and |
	circuit := EpicCircuit new.
	or := EpicOr new.
	and := EpicAnd new.
	
	circuit 
		addSubComponent: and;
		addSubComponent: or;
		addInputPort: EpicInputPort new;
		addInputPort: EpicInputPort new;
		addOutputPort: EpicOutputPort new;
		addOutputPort: EpicOutputPort new.
		
	
	EpicWire 
		from: circuit innerInputPorts first to: and inputPorts first;
		from: circuit innerInputPorts second to: and inputPorts second;
		from: circuit innerInputPorts first to: or inputPorts first;
		from: circuit innerInputPorts second to: or inputPorts second;
		from: and outputPorts first to: circuit innerOutputPorts first;
		from: or outputPorts first to: circuit innerOutputPorts second.
		
	^ circuit
	