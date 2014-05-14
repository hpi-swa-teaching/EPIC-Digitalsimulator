port & wire testing
getBundleSetup
	| input1 input2 output1 output2 wireList |
	output1 := EpicOutputPort new center: 0@0.
	output2 := EpicOutputPort new center: 4@2.
	input1 := EpicInputPort new center: 8@2.
	input2 := EpicInputPort new center: 10@6.
	
	wireList := OrderedCollection new.
	wireList
		add: (EpicWire from: output1 to: input1 );
		add: (EpicWire from: output2 to: input2 ).
	^wireList