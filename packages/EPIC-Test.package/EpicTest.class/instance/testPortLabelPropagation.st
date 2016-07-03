port & wire testing
testPortLabelPropagation
	| circuit label |
	label := 'portLabel'.
	circuit := EpicCustomCircuit new.
	circuit addPort: EpicInputPort new.
	circuit allPorts do: [ :eachPort | 
		self assert: [ eachPort label = '' ]
	].
	circuit ports first setLabel: label.
	circuit allPorts do: [ :eachPort |
		self assert: [ eachPort label = label ]
	].
	circuit innerPorts first setLabel: ''.
	circuit allPorts do: [ :eachPort |
		self assert: [ eachPort label = '' ]
	]