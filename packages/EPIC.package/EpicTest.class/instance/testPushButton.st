component testing
testPushButton
	| pushButton |
	pushButton := EpicPushButton new.
	self assert: [pushButton outputPorts first value = false].
	pushButton activate.
	self assert: [pushButton outputPorts first value = true].
	pushButton deactivate.
	self assert: [pushButton outputPorts first value = false].