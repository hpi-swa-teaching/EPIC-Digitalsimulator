accessing ports
addInputPort: anInputPort
	| innerPort |
	super addInputPort: anInputPort.
	innerPort := self innerInputPorts add: EpicOutputPort new.
	innerPort 
		component: self;
		position: anInputPort position.
	anInputPort 
		removeActionsWithReceiver: self forEvent: #valueChanged;
		when: #valueChanged send: #adoptValueOf: to: innerPort with: anInputPort
	