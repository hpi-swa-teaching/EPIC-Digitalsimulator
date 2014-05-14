accessing ports
addUnnamedOutputPorts: aNumber
	1 to: aNumber do: 
		[:i | self addOutputPort: EpicOutputPort new]