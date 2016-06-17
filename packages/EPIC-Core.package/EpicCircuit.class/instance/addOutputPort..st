accessing ports
addOutputPort: anOutputPort
	| innerPort |
	super addOutputPort: anOutputPort.
	innerPort := self innerOutputPorts add: EpicInputPort new.
	innerPort 
		component: self;
		position: anOutputPort position;
		when: #valueChanged send: #adoptValueOf: to: anOutputPort with: innerPort
	