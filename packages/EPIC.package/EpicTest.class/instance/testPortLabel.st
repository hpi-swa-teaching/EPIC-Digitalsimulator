port & wire testing
testPortLabel
	| port label |
	port := EpicInputPort new.
	label := 'portLabel'.
	
	self assert: [ port label = '' ].
	
	port setLabel: label.
	
	self assert: [ port label = label ]