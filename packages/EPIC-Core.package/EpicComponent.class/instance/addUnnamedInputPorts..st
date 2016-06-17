accessing ports
addUnnamedInputPorts: aNumber
	1 to: aNumber do: 
		[:i | self addInputPort: EpicInputPort new]