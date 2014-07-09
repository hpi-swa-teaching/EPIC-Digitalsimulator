wire testing
testOscilloscope
	| oscBox |
	oscBox := EpicOscilloscopeBox new.
	oscBox mouseDown: nil onButton: oscBox startButton. 
	self deny: [oscBox paused ].
	oscBox addPort: EpicOutputPort new.
	oscBox timeStep.
	self deny: [oscBox oscilloscopes last values last].
	oscBox mouseDown: nil onButton: oscBox stopButton. 
	self assert: [oscBox paused ].
	oscBox timeStep.
	self deny: [oscBox oscilloscopes last values last]