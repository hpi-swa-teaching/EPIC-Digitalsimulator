accessing ports
addUnnamedSelectorPorts: aNumber
	1 to: aNumber do:
		[:i | self addSelectorPort: EpicInputPort new]