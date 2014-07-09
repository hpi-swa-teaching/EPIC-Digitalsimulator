accessing ports
adjustNumberOfInputPorts: aNumberOfInputPorts numberOfOutputPorts: aNumberOfOutputPorts
	((aNumberOfInputPorts = self inputPorts size) and: (aNumberOfOutputPorts < self outputPorts size)) ifFalse: [
		self testCases: nil ].

	(aNumberOfInputPorts < self inputPorts size) ifTrue: [
			self inputPorts copy do: [ :eachPort |
				eachPort delete. ].
			self inputPorts: OrderedCollection new. 
			self innerInputPorts copy do: [ :eachPort |
				eachPort delete. ].
			self innerInputPorts: OrderedCollection new. 
			self testCases: nil ].
	
	[aNumberOfInputPorts > self inputPorts size] whileTrue: [self addInputPort: EpicInputPort new]. 

	(aNumberOfOutputPorts < self outputPorts size) ifTrue: [
		self outputPorts copy do: [ :eachPort | 
				eachPort delete. ].
			self outputPorts: OrderedCollection new.
		self innerOutputPorts copy do: [ :eachPort | 
				eachPort delete. ].
			self innerOutputPorts: OrderedCollection new. 
			self testCases: nil ].
	[aNumberOfOutputPorts > self outputPorts size] whileTrue: [self addOutputPort: EpicOutputPort new]. 

	self resizeToPortCount;
		reLayoutPorts