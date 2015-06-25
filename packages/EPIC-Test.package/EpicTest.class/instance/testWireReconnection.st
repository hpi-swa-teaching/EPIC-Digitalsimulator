port & wire testing
testWireReconnection
	| panel firstNot lastNot|
	panel := EpicEditorPanel new.
	panel commandExecutor: EpicCommandExecutor new.
	1 to: 4 do: [ :I |
		panel addComponent: EpicNot new
	].
	firstNot := panel components first.
	lastNot := panel components last.
	panel components overlappingPairsDo: [ :not1 :not2 |
		EpicWire from: not1 outputPorts first to: not2 inputPorts first
	].
	firstNot inputPorts first setValue: true.
	self assert: [lastNot outputPorts first value = true].
	firstNot inputPorts first setValue: false.
	self assert: [lastNot outputPorts first value = false].
	panel selectComponents: panel components allButFirst allButLast.
	panel combineSelectedComponentsToUnnamedCircuit.
	firstNot inputPorts first setValue: true.
	self assert: [lastNot outputPorts first value = true].
	firstNot inputPorts first setValue: false.
	self assert: [lastNot outputPorts first value = false].
	