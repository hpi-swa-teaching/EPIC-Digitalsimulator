component testing
testJunctionDeletion
	| junction startPort endPort1 endPort2 inputWire outputWire1 outputWire2 |
	
	junction := EpicJunction new.
	
	startPort := EpicOutputPort new.
	endPort1 := EpicInputPort new.
	endPort2 := EpicInputPort new.	
		
	inputWire := EpicWire new setStartPort: startPort;
			    setEndPort: junction inputPorts first.
	outputWire1:= EpicWire new setStartPort: junction outputPorts first;
				  setEndPort: endPort1. 
	outputWire2 := EpicWire new setStartPort: junction outputPorts first;
				  setEndPort: endPort2. 
	
	junction delete.
	
	self
		should: [outputWire1 startPort = startPort ];
		should: [outputWire2 startPort = startPort ].