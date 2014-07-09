component modification
askForPortCount: aCircuit
	| numberOfInputPorts numberOfOutputPorts|		
	numberOfInputPorts := (EpicCircuitNamingDialog getPortCountWithTitle: 'Input Ports' label: 'Please enter the number of Input Ports'  text: (aCircuit inputPorts size) asString). 
	numberOfInputPorts ifNil: [ numberOfInputPorts := aCircuit inputPorts size] ifNotNil: [ numberOfInputPorts := numberOfInputPorts asInteger ].
	numberOfOutputPorts := (EpicCircuitNamingDialog getPortCountWithTitle: 'Output Ports' label: 'Please enter the number of Output Ports'  text: (aCircuit outputPorts size) asString).
	numberOfOutputPorts ifNil: [ numberOfOutputPorts := aCircuit outputPorts size] ifNotNil: [ numberOfOutputPorts := numberOfOutputPorts asInteger ].
	
	^ {numberOfInputPorts . numberOfOutputPorts}